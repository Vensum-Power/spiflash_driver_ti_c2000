/*
 * Test-only mock HAL for the spiflash driver.
 *
 * Provides:
 *   - mock_hal_init / mock_hal_reset : install vtable into a spiflash_t.
 *   - mock_hal_log_*                 : inspect every txrx/cs/wait call.
 *   - mock_hal_set_rx                : queue bytes the next txrx will return.
 *   - mock_hal_fakeflash_*           : tiny in-memory flash model for read/write tests.
 *
 * The mock is byte-storage-mode aware: it always presents and consumes
 * "octets" through SPIF_BYTE_GET / SPIF_BYTE_SET so the same tests can run in
 * one-octet-per-word and packed-byte modes.
 */

#ifndef SPIFLASH_TEST_MOCK_HAL_H_
#define SPIFLASH_TEST_MOCK_HAL_H_

#include <stddef.h>
#include <stdint.h>

#include "spiflash.h"

#ifdef __cplusplus
extern "C" {
#endif

#define MOCK_HAL_MAX_LOG_ENTRIES 64
#define MOCK_HAL_MAX_PAYLOAD     1024

typedef enum {
    MOCK_HAL_EVT_CS = 1,
    MOCK_HAL_EVT_TXRX,
    MOCK_HAL_EVT_WAIT
} mock_hal_evt_kind_t;

typedef struct {
    mock_hal_evt_kind_t kind;
    /* CS event */
    uint8_t cs_state;
    /* TXRX event */
    uint32_t tx_len;
    uint32_t rx_len;
    uint8_t  tx_payload[MOCK_HAL_MAX_PAYLOAD];
    uint8_t  rx_payload[MOCK_HAL_MAX_PAYLOAD];
    /* WAIT event */
    uint32_t wait_ms;
} mock_hal_event_t;

typedef struct {
    spiflash_hal_t hal;

    /* Event log (in arrival order). */
    mock_hal_event_t log[MOCK_HAL_MAX_LOG_ENTRIES];
    size_t log_count;

    /* RX queue: bytes the next txrx() calls will produce on rx_data. */
    uint8_t rx_queue[MOCK_HAL_MAX_PAYLOAD];
    size_t  rx_queue_len;
    size_t  rx_queue_head;

    /* Async control: when async_consumes_calls != 0, txrx/wait return without
     * synchronously triggering, and the test must call SPIFLASH_async_trigger.
     */
    int async_consumes_calls;

    /* Optional per-txrx return code. 0 -> SPIFLASH_OK. */
    int next_txrx_return;

    /* Optional fake flash. */
    uint8_t  *fakeflash_storage;     /* one octet per cell (host: one byte) */
    uint32_t  fakeflash_size_octets;
    uint8_t   fakeflash_sr;          /* status register */
    uint8_t   fakeflash_write_enable;
    uint8_t   fakeflash_active_cmd;
    uint32_t  fakeflash_addr;
    uint8_t   fakeflash_addr_bytes_remaining;
    uint8_t   fakeflash_addr_sz;
    uint8_t   fakeflash_addr_endian;
    uint8_t   fakeflash_busy_bit;
    uint8_t   fakeflash_state;
} mock_hal_t;

void mock_hal_init(mock_hal_t *m);
void mock_hal_reset(mock_hal_t *m);

/* Queue bytes that subsequent txrx() rx_data calls will read out. */
void mock_hal_set_rx(mock_hal_t *m, const uint8_t *data, size_t n);

/* Log inspection helpers. */
size_t mock_hal_log_count(const mock_hal_t *m);
const mock_hal_event_t *mock_hal_log_entry(const mock_hal_t *m, size_t idx);

/* Convenience: nth TXRX entry (skipping CS / WAIT events). */
const mock_hal_event_t *mock_hal_nth_txrx(const mock_hal_t *m, size_t n);
const mock_hal_event_t *mock_hal_nth_wait(const mock_hal_t *m, size_t n);
const mock_hal_event_t *mock_hal_nth_cs(const mock_hal_t *m, size_t n);

/* Configure a tiny in-memory flash model. storage must outlive the mock and be
 * sized to size_octets. The model interprets enough commands (write enable,
 * read sr, read data, page program, sector erase, chip erase) to drive the
 * driver end-to-end through write/read tests.
 */
void mock_hal_fakeflash_attach(mock_hal_t *m,
                               uint8_t *storage,
                               uint32_t size_octets,
                               const spiflash_cmd_tbl_t *cmd_tbl,
                               uint8_t addr_sz,
                               uint8_t addr_endian);

#ifdef __cplusplus
}
#endif

#endif /* SPIFLASH_TEST_MOCK_HAL_H_ */
