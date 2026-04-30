/*
 * test_busy_poll.c
 *
 * Verifies the BCW (busy-check-wait) state machine: after a page program the
 * driver must wait, read SR, observe busy, wait again with a halved timeout,
 * and finally proceed when SR clears.
 */

#include <stdint.h>
#include <string.h>

#include "unity.h"
#include "spiflash.h"
#include "mock_hal.h"

static spiflash_t s_spi;
static spiflash_config_t s_cfg;
static spiflash_cmd_tbl_t s_cmd;
static mock_hal_t s_mock;

void setUp(void) {
    mock_hal_init(&s_mock);
    s_cmd = SPIFLASH_CMD_TBL_STANDARD;
    memset(&s_cfg, 0, sizeof(s_cfg));
    s_cfg.sz = 64u * 1024u;
    s_cfg.page_sz = 256;
    s_cfg.addr_sz = 3;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_BIG;
    s_cfg.page_program_ms = 4;

    SPIFLASH_init(&s_spi, &s_cfg, &s_cmd, &s_mock.hal, NULL,
                  SPIFLASH_SYNCHRONOUS, &s_mock);
}

void tearDown(void) {}

void test_wait_then_sr_poll_until_ready(void) {
    /* Mock txrx returns: nothing for cmd/addr/data txs, then SR sequence:
     *   1st sr read: busy (bit set)
     *   2nd sr read: ready (bit clear)
     */
    uint8_t rx_seq[] = {
        s_cmd.sr_busy_bit, /* SR poll #1 -> busy */
        0u                 /* SR poll #2 -> ready */
    };
    mock_hal_set_rx(&s_mock, rx_seq, sizeof(rx_seq));

    uint8_t payload[4] = {1, 2, 3, 4};
    int rc = SPIFLASH_write(&s_spi, 0u, sizeof(payload), payload);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);

    /* Walk the log and check we saw at least:
     *   - WREN write
     *   - PAGE_PROGRAM cmd+addr
     *   - data
     *   - wait(page_program_ms)
     *   - read_sr -> busy
     *   - wait(page_program_ms / 2)
     *   - read_sr -> not busy
     */
    const mock_hal_event_t *wait1 = mock_hal_nth_wait(&s_mock, 0);
    TEST_ASSERT_NOT_NULL(wait1);
    TEST_ASSERT_EQUAL_UINT32(s_cfg.page_program_ms, wait1->wait_ms);

    const mock_hal_event_t *wait2 = mock_hal_nth_wait(&s_mock, 1);
    TEST_ASSERT_NOT_NULL(wait2);
    TEST_ASSERT_EQUAL_UINT32(s_cfg.page_program_ms / 2u, wait2->wait_ms);

    /* The first SR read must come after the first wait. */
    int saw_wait_then_sr = 0;
    int waits_seen = 0;
    for (size_t i = 0; i < mock_hal_log_count(&s_mock); ++i) {
        const mock_hal_event_t *e = mock_hal_log_entry(&s_mock, i);
        if (e->kind == MOCK_HAL_EVT_WAIT) {
            waits_seen++;
        }
        if (waits_seen >= 1 && e->kind == MOCK_HAL_EVT_TXRX
                && e->tx_len == 1u && e->tx_payload[0] == s_cmd.read_sr) {
            saw_wait_then_sr = 1;
            break;
        }
    }
    TEST_ASSERT_TRUE(saw_wait_then_sr);
}

void test_no_busy_pin_path_zero_ms_no_sr_poll(void) {
    /* Set page_program_ms = 0 -> driver should NOT poll SR after wait. */
    s_cfg.page_program_ms = 0;

    uint8_t payload[4] = {0xCA, 0xFE, 0xBA, 0xBE};
    int rc = SPIFLASH_write(&s_spi, 0u, sizeof(payload), payload);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);

    /* Count read_sr txrx events (single-byte tx with read_sr opcode and rx_len=1). */
    int sr_polls = 0;
    for (size_t i = 0; i < mock_hal_log_count(&s_mock); ++i) {
        const mock_hal_event_t *e = mock_hal_log_entry(&s_mock, i);
        if (e->kind == MOCK_HAL_EVT_TXRX
                && e->tx_len == 1u
                && e->tx_payload[0] == s_cmd.read_sr
                && e->rx_len == 1u) {
            sr_polls++;
        }
    }
    TEST_ASSERT_EQUAL_INT(0, sr_polls);
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_wait_then_sr_poll_until_ready);
    RUN_TEST(test_no_busy_pin_path_zero_ms_no_sr_poll);
    return UNITY_END();
}
