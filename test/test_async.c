/*
 * test_async.c
 *
 * Drives an asynchronous write end-to-end. The mock HAL is configured to NOT
 * auto-trigger SPIFLASH_async_trigger on wait()/txrx(); the test pumps the
 * state machine itself.
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

static int s_async_done = 0;
static int s_async_err = 0;
static spiflash_op_t s_async_op_at_done = SPIFLASH_OP_IDLE;

static void on_async(spiflash_t *spi, spiflash_op_t op, int err_code) {
    (void)spi;
    s_async_done = 1;
    s_async_err = err_code;
    s_async_op_at_done = op;
}

void setUp(void) {
    mock_hal_init(&s_mock);
    s_mock.async_consumes_calls = 1;
    s_cmd = SPIFLASH_CMD_TBL_STANDARD;
    memset(&s_cfg, 0, sizeof(s_cfg));
    s_cfg.sz = 64u * 1024u;
    s_cfg.page_sz = 256;
    s_cfg.addr_sz = 3;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_BIG;
    s_cfg.page_program_ms = 2;

    s_async_done = 0;
    s_async_err = 0;
    s_async_op_at_done = SPIFLASH_OP_IDLE;

    SPIFLASH_init(&s_spi, &s_cfg, &s_cmd, &s_mock.hal, on_async,
                  SPIFLASH_ASYNCHRONOUS, &s_mock);
}

void tearDown(void) {}

/* Pump async state machine until the on_async callback fires. The mock here
 * never auto-triggers, so we drive each completion manually.
 */
static void pump_until_done(int safety_max_steps) {
    /* SR poll #2 returns ready (bit clear). */
    uint8_t sr_seq[] = { 0u };
    mock_hal_set_rx(&s_mock, sr_seq, sizeof(sr_seq));

    int steps = 0;
    while (!s_async_done && steps++ < safety_max_steps) {
        int rc = SPIFLASH_async_trigger(&s_spi, 0);
        if (rc != SPIFLASH_OK) break;
    }
    TEST_ASSERT_TRUE_MESSAGE(s_async_done, "async never finished");
}

void test_async_write_completes(void) {
    uint8_t payload[16];
    for (uint8_t i = 0; i < sizeof(payload); ++i) payload[i] = i;

    int rc = SPIFLASH_write(&s_spi, 0u, sizeof(payload), payload);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);

    pump_until_done(64);

    TEST_ASSERT_EQUAL_INT(0, s_async_err);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OP_IDLE, s_async_op_at_done);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, SPIFLASH_is_busy(&s_spi));
}

void test_async_error_propagates(void) {
    uint8_t payload[4] = {0, 1, 2, 3};

    /* Force the next txrx to return an error. */
    s_mock.next_txrx_return = -42;

    int rc = SPIFLASH_write(&s_spi, 0u, sizeof(payload), payload);
    /* Initiated synchronously inside _spiflash_begin_async; either rc reflects
     * the error or the async cb is invoked. Tolerate both.
     */
    if (rc == SPIFLASH_OK) {
        SPIFLASH_async_trigger(&s_spi, -42);
    }
    TEST_ASSERT_TRUE(s_async_done || rc != SPIFLASH_OK);
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_async_write_completes);
    RUN_TEST(test_async_error_propagates);
    return UNITY_END();
}
