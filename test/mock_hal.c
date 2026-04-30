/*
 * Test-only mock HAL implementation. See mock_hal.h.
 */

#include "mock_hal.h"

#include <string.h>
#include <assert.h>

#include "spiflash_port.h"

/* Cached cmd_tbl pointer for the optional fake-flash model. */
static const spiflash_cmd_tbl_t *s_cmd_tbl;

enum {
    FF_STATE_IDLE = 0,
    FF_STATE_PAGE_PROGRAM,
    FF_STATE_READ,
    FF_STATE_FAST_READ_DUMMY,
    FF_STATE_FAST_READ,
    FF_STATE_READ_SR,
    FF_STATE_WRITE_SR,
    FF_STATE_BLOCK_ERASE,
    FF_STATE_CHIP_ERASE
};

/* ------------------------------------------------------------------ */
/* HAL function implementations.                                       */
/* ------------------------------------------------------------------ */

static void log_push(mock_hal_t *m, const mock_hal_event_t *evt) {
    if (m->log_count < MOCK_HAL_MAX_LOG_ENTRIES) {
        m->log[m->log_count++] = *evt;
    }
}

static void fakeflash_consume_tx(mock_hal_t *m, const uint8_t *tx, uint32_t n);
static void fakeflash_produce_rx(mock_hal_t *m, uint8_t *rx, uint32_t n);

static int hal_txrx(struct spiflash_s *spi, const uint8_t *tx_data,
                    uint32_t tx_len, uint8_t *rx_data, uint32_t rx_len) {
    mock_hal_t *m = (mock_hal_t *)spi->user_data;
    mock_hal_event_t evt;
    memset(&evt, 0, sizeof(evt));
    evt.kind = MOCK_HAL_EVT_TXRX;
    evt.tx_len = tx_len;
    evt.rx_len = rx_len;

    if (tx_len > 0 && tx_len <= MOCK_HAL_MAX_PAYLOAD) {
        for (uint32_t i = 0; i < tx_len; ++i) {
            evt.tx_payload[i] = SPIF_BYTE_GET(tx_data, i);
        }
    }

    if (m->fakeflash_storage && tx_len > 0) {
        fakeflash_consume_tx(m, evt.tx_payload, tx_len);
    }

    if (rx_len > 0) {
        if (m->fakeflash_storage) {
            uint8_t scratch[MOCK_HAL_MAX_PAYLOAD];
            assert(rx_len <= MOCK_HAL_MAX_PAYLOAD);
            fakeflash_produce_rx(m, scratch, rx_len);
            for (uint32_t i = 0; i < rx_len; ++i) {
                SPIF_BYTE_SET(rx_data, i, scratch[i]);
                evt.rx_payload[i] = scratch[i];
            }
        } else {
            for (uint32_t i = 0; i < rx_len; ++i) {
                uint8_t b = 0;
                if (m->rx_queue_head < m->rx_queue_len) {
                    b = m->rx_queue[m->rx_queue_head++];
                }
                SPIF_BYTE_SET(rx_data, i, b);
                evt.rx_payload[i] = b;
            }
        }
    }

    log_push(m, &evt);

    int rc = m->next_txrx_return;
    m->next_txrx_return = 0;
    return rc;
}

static void hal_cs(struct spiflash_s *spi, uint8_t cs) {
    mock_hal_t *m = (mock_hal_t *)spi->user_data;
    mock_hal_event_t evt;
    memset(&evt, 0, sizeof(evt));
    evt.kind = MOCK_HAL_EVT_CS;
    evt.cs_state = cs;
    log_push(m, &evt);

    if (m->fakeflash_storage && !cs) {
        /* Deselect resets per-transaction state. */
        m->fakeflash_state = FF_STATE_IDLE;
        m->fakeflash_addr_bytes_remaining = 0;
    }
}

static void hal_wait(struct spiflash_s *spi, uint32_t ms) {
    mock_hal_t *m = (mock_hal_t *)spi->user_data;
    mock_hal_event_t evt;
    memset(&evt, 0, sizeof(evt));
    evt.kind = MOCK_HAL_EVT_WAIT;
    evt.wait_ms = ms;
    log_push(m, &evt);

    if (m->fakeflash_storage) {
        /* The fake flash is instantaneous: clear busy on every wait. */
        m->fakeflash_sr &= (uint8_t)~m->fakeflash_busy_bit;
    }

    if (!m->async_consumes_calls) {
        SPIFLASH_async_trigger(spi, 0);
    }
}

/* ------------------------------------------------------------------ */
/* Fake flash model (a tiny SPI NOR responder).                        */
/* ------------------------------------------------------------------ */

static uint32_t decode_addr(const mock_hal_t *m, const uint8_t *bytes) {
    uint32_t a = 0;
    if (m->fakeflash_addr_endian) {
        for (uint8_t i = 0; i < m->fakeflash_addr_sz; ++i) {
            a = (a << 8) | bytes[i];
        }
    } else {
        for (uint8_t i = 0; i < m->fakeflash_addr_sz; ++i) {
            a |= ((uint32_t)bytes[i]) << (8u * i);
        }
    }
    return a;
}

static void fakeflash_consume_tx(mock_hal_t *m, const uint8_t *tx, uint32_t n) {
    uint32_t i = 0;
    while (i < n) {
        if (m->fakeflash_state == FF_STATE_IDLE) {
            uint8_t cmd = tx[i++];
            m->fakeflash_active_cmd = cmd;
            if (cmd == s_cmd_tbl->write_enable) {
                m->fakeflash_write_enable = 1;
            } else if (cmd == s_cmd_tbl->write_disable) {
                m->fakeflash_write_enable = 0;
            } else if (cmd == s_cmd_tbl->read_sr) {
                m->fakeflash_state = FF_STATE_READ_SR;
            } else if (cmd == s_cmd_tbl->write_sr) {
                m->fakeflash_state = FF_STATE_WRITE_SR;
            } else if (cmd == s_cmd_tbl->read_data) {
                m->fakeflash_state = FF_STATE_READ;
                m->fakeflash_addr_bytes_remaining = m->fakeflash_addr_sz;
                m->fakeflash_addr = 0;
            } else if (cmd == s_cmd_tbl->read_data_fast) {
                m->fakeflash_state = FF_STATE_FAST_READ_DUMMY;
                m->fakeflash_addr_bytes_remaining = m->fakeflash_addr_sz;
                m->fakeflash_addr = 0;
            } else if (cmd == s_cmd_tbl->page_program) {
                m->fakeflash_state = FF_STATE_PAGE_PROGRAM;
                m->fakeflash_addr_bytes_remaining = m->fakeflash_addr_sz;
                m->fakeflash_addr = 0;
                m->fakeflash_sr |= m->fakeflash_busy_bit;
            } else if (cmd == s_cmd_tbl->chip_erase) {
                if (m->fakeflash_write_enable) {
                    memset(m->fakeflash_storage, 0xFF, m->fakeflash_size_octets);
                    m->fakeflash_write_enable = 0;
                    m->fakeflash_sr |= m->fakeflash_busy_bit;
                }
                m->fakeflash_state = FF_STATE_IDLE;
            } else if (cmd == s_cmd_tbl->block_erase_4 ||
                       cmd == s_cmd_tbl->block_erase_8 ||
                       cmd == s_cmd_tbl->block_erase_16 ||
                       cmd == s_cmd_tbl->block_erase_32 ||
                       cmd == s_cmd_tbl->block_erase_64 ||
                       (s_cmd_tbl->page_erase && cmd == s_cmd_tbl->page_erase)) {
                m->fakeflash_state = FF_STATE_BLOCK_ERASE;
                m->fakeflash_addr_bytes_remaining = m->fakeflash_addr_sz;
                m->fakeflash_addr = 0;
            } else {
                /* Unknown command: stay idle, do nothing. */
            }
            continue;
        }

        if (m->fakeflash_addr_bytes_remaining > 0) {
            uint8_t buf[8];
            uint32_t take = m->fakeflash_addr_bytes_remaining;
            if (take > (n - i)) take = (uint32_t)(n - i);
            memcpy(buf, &tx[i], take);
            i += take;
            m->fakeflash_addr_bytes_remaining -= (uint8_t)take;
            if (m->fakeflash_addr_bytes_remaining == 0) {
                /* For simplicity assume a single shot of address bytes here. */
                /* Note: this assumes the caller gave us all addr_sz bytes in one
                 * txrx; the driver does send them contiguously. */
                m->fakeflash_addr = decode_addr(m, &tx[i - m->fakeflash_addr_sz]);
                if (m->fakeflash_state == FF_STATE_BLOCK_ERASE) {
                    /* Erase happens on receipt of address. */
                    if (m->fakeflash_write_enable) {
                        uint32_t blk = 0;
                        if (m->fakeflash_active_cmd == s_cmd_tbl->block_erase_64) blk = 64u * 1024u;
                        else if (m->fakeflash_active_cmd == s_cmd_tbl->block_erase_32) blk = 32u * 1024u;
                        else if (m->fakeflash_active_cmd == s_cmd_tbl->block_erase_16) blk = 16u * 1024u;
                        else if (m->fakeflash_active_cmd == s_cmd_tbl->block_erase_8) blk = 8u * 1024u;
                        else if (m->fakeflash_active_cmd == s_cmd_tbl->block_erase_4) blk = 4u * 1024u;
                        else if (m->fakeflash_active_cmd == s_cmd_tbl->page_erase) blk = 256u;
                        if (blk && m->fakeflash_addr + blk <= m->fakeflash_size_octets) {
                            memset(&m->fakeflash_storage[m->fakeflash_addr], 0xFF, blk);
                        }
                        m->fakeflash_write_enable = 0;
                        m->fakeflash_sr |= m->fakeflash_busy_bit;
                    }
                    m->fakeflash_state = FF_STATE_IDLE;
                }
            }
            continue;
        }

        switch (m->fakeflash_state) {
        default:
            i++;
            break;
        case FF_STATE_PAGE_PROGRAM:
            if (m->fakeflash_write_enable && m->fakeflash_addr < m->fakeflash_size_octets) {
                m->fakeflash_storage[m->fakeflash_addr++] = tx[i];
            } else {
                m->fakeflash_addr++;
            }
            i++;
            break;
        case FF_STATE_WRITE_SR:
            m->fakeflash_sr = tx[i++];
            m->fakeflash_state = FF_STATE_IDLE;
            break;
        case FF_STATE_FAST_READ_DUMMY:
            i++;
            m->fakeflash_state = FF_STATE_FAST_READ;
            break;
        case FF_STATE_READ:
        case FF_STATE_FAST_READ:
        case FF_STATE_READ_SR:
            /* These are TX-then-RX; further TX bytes during read are ignored. */
            i++;
            break;
        }
    }
}

static void fakeflash_produce_rx(mock_hal_t *m, uint8_t *rx, uint32_t n) {
    for (uint32_t i = 0; i < n; ++i) {
        switch (m->fakeflash_state) {
        case FF_STATE_READ_SR:
            rx[i] = m->fakeflash_sr;
            break;
        case FF_STATE_READ:
        case FF_STATE_FAST_READ:
            if (m->fakeflash_addr < m->fakeflash_size_octets) {
                rx[i] = m->fakeflash_storage[m->fakeflash_addr++];
            } else {
                rx[i] = 0xFF;
            }
            break;
        default:
            rx[i] = 0xFF;
            break;
        }
    }
}

/* ------------------------------------------------------------------ */
/* Public helpers.                                                     */
/* ------------------------------------------------------------------ */

void mock_hal_init(mock_hal_t *m) {
    memset(m, 0, sizeof(*m));
    m->hal._spiflash_spi_txrx = hal_txrx;
    m->hal._spiflash_spi_cs   = hal_cs;
    m->hal._spiflash_wait     = hal_wait;
}

void mock_hal_reset(mock_hal_t *m) {
    /* Preserve hal vtable + fakeflash attachment + async config. */
    spiflash_hal_t saved_hal = m->hal;
    int async = m->async_consumes_calls;
    uint8_t *fs = m->fakeflash_storage;
    uint32_t fsz = m->fakeflash_size_octets;
    uint8_t addr_sz = m->fakeflash_addr_sz;
    uint8_t addr_endian = m->fakeflash_addr_endian;
    uint8_t busy_bit = m->fakeflash_busy_bit;

    memset(m, 0, sizeof(*m));
    m->hal = saved_hal;
    m->async_consumes_calls = async;
    m->fakeflash_storage = fs;
    m->fakeflash_size_octets = fsz;
    m->fakeflash_addr_sz = addr_sz;
    m->fakeflash_addr_endian = addr_endian;
    m->fakeflash_busy_bit = busy_bit;
    if (fs) memset(fs, 0xFF, fsz);
}

void mock_hal_set_rx(mock_hal_t *m, const uint8_t *data, size_t n) {
    assert(n <= MOCK_HAL_MAX_PAYLOAD);
    memcpy(m->rx_queue, data, n);
    m->rx_queue_len = n;
    m->rx_queue_head = 0;
}

size_t mock_hal_log_count(const mock_hal_t *m) {
    return m->log_count;
}

const mock_hal_event_t *mock_hal_log_entry(const mock_hal_t *m, size_t idx) {
    if (idx >= m->log_count) return NULL;
    return &m->log[idx];
}

const mock_hal_event_t *mock_hal_nth_txrx(const mock_hal_t *m, size_t n) {
    size_t seen = 0;
    for (size_t i = 0; i < m->log_count; ++i) {
        if (m->log[i].kind == MOCK_HAL_EVT_TXRX) {
            if (seen == n) return &m->log[i];
            seen++;
        }
    }
    return NULL;
}

const mock_hal_event_t *mock_hal_nth_wait(const mock_hal_t *m, size_t n) {
    size_t seen = 0;
    for (size_t i = 0; i < m->log_count; ++i) {
        if (m->log[i].kind == MOCK_HAL_EVT_WAIT) {
            if (seen == n) return &m->log[i];
            seen++;
        }
    }
    return NULL;
}

const mock_hal_event_t *mock_hal_nth_cs(const mock_hal_t *m, size_t n) {
    size_t seen = 0;
    for (size_t i = 0; i < m->log_count; ++i) {
        if (m->log[i].kind == MOCK_HAL_EVT_CS) {
            if (seen == n) return &m->log[i];
            seen++;
        }
    }
    return NULL;
}

void mock_hal_fakeflash_attach(mock_hal_t *m,
                               uint8_t *storage,
                               uint32_t size_octets,
                               const spiflash_cmd_tbl_t *cmd_tbl,
                               uint8_t addr_sz,
                               uint8_t addr_endian) {
    m->fakeflash_storage = storage;
    m->fakeflash_size_octets = size_octets;
    m->fakeflash_addr_sz = addr_sz;
    m->fakeflash_addr_endian = addr_endian;
    m->fakeflash_busy_bit = cmd_tbl->sr_busy_bit;
    m->fakeflash_state = FF_STATE_IDLE;
    s_cmd_tbl = cmd_tbl;
    memset(storage, 0xFF, size_octets);
}
