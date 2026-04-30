/*
 * test_write_paging.c
 *
 * Drives an end-to-end synchronous write that crosses page boundaries and
 * inspects: address sequencing, chunk sizes, and final flash contents through
 * the fake-flash model.
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

#define FLASH_OCTETS (4u * 1024u)
static uint8_t s_storage[FLASH_OCTETS];

void setUp(void) {
    mock_hal_init(&s_mock);
    s_cmd = SPIFLASH_CMD_TBL_STANDARD;
    memset(&s_cfg, 0, sizeof(s_cfg));
    s_cfg.sz = FLASH_OCTETS;
    s_cfg.page_sz = 256;
    s_cfg.addr_sz = 3;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_BIG;
    s_cfg.page_program_ms = 1;

    mock_hal_fakeflash_attach(&s_mock, s_storage, FLASH_OCTETS, &s_cmd, 3,
                              SPIFLASH_ENDIANNESS_BIG);

    SPIFLASH_init(&s_spi, &s_cfg, &s_cmd, &s_mock.hal, NULL,
                  SPIFLASH_SYNCHRONOUS, &s_mock);
}

void tearDown(void) {}

static void make_payload(spif_byte_t *buf, uint32_t n, uint8_t seed) {
    for (uint32_t i = 0; i < n; ++i) {
        SPIF_BYTE_SET(buf, i, (uint8_t)(seed + i));
    }
}

void test_single_page_aligned_write(void) {
    spif_byte_t payload[256];
    make_payload(payload, 256, 0x10);

    int rc = SPIFLASH_write(&s_spi, 0u, 256, (const uint8_t *)payload);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);

    /* Verify storage matches. */
    for (uint32_t i = 0; i < 256; ++i) {
        TEST_ASSERT_EQUAL_HEX8((uint8_t)(0x10 + i), s_storage[i]);
    }
}

void test_write_crosses_page_boundary(void) {
    /* Start 100 octets into page 0, write 300 octets -> spills 156 into page 0
     * and 144 into page 1. Driver must split this into 2 page programs.
     */
    spif_byte_t payload[300];
    make_payload(payload, 300, 0xA0);

    int rc = SPIFLASH_write(&s_spi, 100u, 300u, (const uint8_t *)payload);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);

    for (uint32_t i = 0; i < 300; ++i) {
        TEST_ASSERT_EQUAL_HEX8((uint8_t)(0xA0 + i), s_storage[100 + i]);
    }
}

void test_write_command_sequence(void) {
    spif_byte_t payload[8];
    make_payload(payload, 8, 0x55);

    int rc = SPIFLASH_write(&s_spi, 0x000123u, 8u, (const uint8_t *)payload);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);

    /* Expect: WREN command, page-program command (with addr), data chunk. */
    const mock_hal_event_t *e0 = mock_hal_nth_txrx(&s_mock, 0);
    TEST_ASSERT_NOT_NULL(e0);
    TEST_ASSERT_EQUAL_UINT32(1u, e0->tx_len);
    TEST_ASSERT_EQUAL_HEX8(s_cmd.write_enable, e0->tx_payload[0]);

    const mock_hal_event_t *e1 = mock_hal_nth_txrx(&s_mock, 1);
    TEST_ASSERT_NOT_NULL(e1);
    /* cmd + 3 addr bytes (no dummy). */
    TEST_ASSERT_EQUAL_UINT32(4u, e1->tx_len);
    TEST_ASSERT_EQUAL_HEX8(s_cmd.page_program, e1->tx_payload[0]);
    TEST_ASSERT_EQUAL_HEX8(0x00, e1->tx_payload[1]);
    TEST_ASSERT_EQUAL_HEX8(0x01, e1->tx_payload[2]);
    TEST_ASSERT_EQUAL_HEX8(0x23, e1->tx_payload[3]);

    const mock_hal_event_t *e2 = mock_hal_nth_txrx(&s_mock, 2);
    TEST_ASSERT_NOT_NULL(e2);
    TEST_ASSERT_EQUAL_UINT32(8u, e2->tx_len);
    for (uint32_t i = 0; i < 8; ++i) {
        TEST_ASSERT_EQUAL_HEX8((uint8_t)(0x55 + i), e2->tx_payload[i]);
    }
}

void test_write_then_read_roundtrip(void) {
    spif_byte_t payload[600];
    make_payload(payload, 600, 0x01);

    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK,
        SPIFLASH_write(&s_spi, 50u, 600u, (const uint8_t *)payload));

    spif_byte_t readback[600];
    memset(readback, 0, sizeof(readback));
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK,
        SPIFLASH_read(&s_spi, 50u, 600u, (uint8_t *)readback));

    for (uint32_t i = 0; i < 600; ++i) {
        TEST_ASSERT_EQUAL_HEX8(SPIF_BYTE_GET(payload, i),
                               SPIF_BYTE_GET(readback, i));
    }
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_single_page_aligned_write);
    RUN_TEST(test_write_crosses_page_boundary);
    RUN_TEST(test_write_command_sequence);
    RUN_TEST(test_write_then_read_roundtrip);
    return UNITY_END();
}
