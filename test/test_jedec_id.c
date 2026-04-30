/*
 * test_jedec_id.c
 *
 * Verifies that JEDEC and product ID 3-byte payloads are reassembled into the
 * caller's uint32_t in the same little-endian octet order the original code
 * produced on a 32-bit byte-addressable target.
 *
 * Catches the (uint8_t *)id_dst aliasing bug that breaks on TI C2000.
 */

#include <stdint.h>
#include <string.h>

#include "unity.h"
#include "spiflash.h"
#include "spiflash_port.h"
#include "mock_hal.h"

static spiflash_t s_spi;
static spiflash_config_t s_cfg;
static spiflash_cmd_tbl_t s_cmd;
static mock_hal_t s_mock;

void setUp(void) {
    mock_hal_init(&s_mock);
    s_cmd = SPIFLASH_CMD_TBL_STANDARD;
    memset(&s_cfg, 0, sizeof(s_cfg));
    s_cfg.sz = 1024 * 1024;
    s_cfg.page_sz = 256;
    s_cfg.addr_sz = 3;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_BIG;
    SPIFLASH_init(&s_spi, &s_cfg, &s_cmd, &s_mock.hal, NULL,
                  SPIFLASH_SYNCHRONOUS, &s_mock);
}

void tearDown(void) {}

void test_jedec_id_assembled_le(void) {
    const uint8_t id_bytes[3] = {0xEF, 0x40, 0x18}; /* Winbond W25Q128 */
    mock_hal_set_rx(&s_mock, id_bytes, sizeof(id_bytes));

    uint32_t id = 0;
    int rc = SPIFLASH_read_jedec_id(&s_spi, &id);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);

    /* Octet 0 -> bits 0..7, octet 1 -> bits 8..15, octet 2 -> bits 16..23. */
    TEST_ASSERT_EQUAL_HEX32(0x001840EFu, id);
}

void test_product_id_assembled_le(void) {
    const uint8_t id_bytes[3] = {0x12, 0x34, 0x56};
    mock_hal_set_rx(&s_mock, id_bytes, sizeof(id_bytes));

    uint32_t id = 0;
    int rc = SPIFLASH_read_product_id(&s_spi, &id);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);
    TEST_ASSERT_EQUAL_HEX32(0x00563412u, id);
}

void test_jedec_preserves_high_byte(void) {
    /* Legacy (uint8_t *)id_dst write only stored 3 octets; the upper byte must
     * come through untouched.
     */
    const uint8_t id_bytes[3] = {0x01, 0x02, 0x03};
    mock_hal_set_rx(&s_mock, id_bytes, sizeof(id_bytes));

    uint32_t id = 0xFE000000u;
    int rc = SPIFLASH_read_jedec_id(&s_spi, &id);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);
    TEST_ASSERT_EQUAL_HEX32(0xFE030201u, id);
}

void test_jedec_command_byte_sent(void) {
    const uint8_t id_bytes[3] = {0xEF, 0x40, 0x18};
    mock_hal_set_rx(&s_mock, id_bytes, sizeof(id_bytes));
    uint32_t id = 0;
    SPIFLASH_read_jedec_id(&s_spi, &id);

    const mock_hal_event_t *txrx = mock_hal_nth_txrx(&s_mock, 0);
    TEST_ASSERT_NOT_NULL(txrx);
    TEST_ASSERT_EQUAL_UINT32(1u, txrx->tx_len);
    TEST_ASSERT_EQUAL_HEX8(s_cmd.jedec_id, txrx->tx_payload[0]);
    TEST_ASSERT_EQUAL_UINT32(3u, txrx->rx_len);
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_jedec_id_assembled_le);
    RUN_TEST(test_product_id_assembled_le);
    RUN_TEST(test_jedec_preserves_high_byte);
    RUN_TEST(test_jedec_command_byte_sent);
    return UNITY_END();
}
