/*
 * test_address_compose.c
 *
 * Verifies _spiflash_compose_address writes the correct sequence of octets
 * for every supported (addr_sz, endian) combination.
 */

#include <stdint.h>
#include <string.h>

#include "unity.h"
#include "spiflash.h"
#include "spiflash_port.h"
#include "spiflash_test_hooks.h"

static spiflash_t s_spi;
static spiflash_config_t s_cfg;

void setUp(void) {
    memset(&s_spi, 0, sizeof(s_spi));
    memset(&s_cfg, 0, sizeof(s_cfg));
    s_spi.cfg = &s_cfg;
}

void tearDown(void) {}

/* Helper to read back octets from a uint8_t buffer through the port macro. */
static uint8_t get_octet(const spif_byte_t *buf, uint32_t i) {
    return SPIF_BYTE_GET(buf, i);
}

void test_be_3byte_addr(void) {
    s_cfg.addr_sz = 3;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_BIG;
    spif_byte_t buf[8] = {0};
    spiflash_test_compose_address(&s_spi, 0x123456u, buf, 0);
    TEST_ASSERT_EQUAL_HEX8(0x12, get_octet(buf, 0));
    TEST_ASSERT_EQUAL_HEX8(0x34, get_octet(buf, 1));
    TEST_ASSERT_EQUAL_HEX8(0x56, get_octet(buf, 2));
}

void test_le_3byte_addr(void) {
    s_cfg.addr_sz = 3;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_LITTLE;
    spif_byte_t buf[8] = {0};
    spiflash_test_compose_address(&s_spi, 0x123456u, buf, 0);
    TEST_ASSERT_EQUAL_HEX8(0x56, get_octet(buf, 0));
    TEST_ASSERT_EQUAL_HEX8(0x34, get_octet(buf, 1));
    TEST_ASSERT_EQUAL_HEX8(0x12, get_octet(buf, 2));
}

void test_be_4byte_addr(void) {
    s_cfg.addr_sz = 4;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_BIG;
    spif_byte_t buf[8] = {0};
    spiflash_test_compose_address(&s_spi, 0xDEADBEEFu, buf, 0);
    TEST_ASSERT_EQUAL_HEX8(0xDE, get_octet(buf, 0));
    TEST_ASSERT_EQUAL_HEX8(0xAD, get_octet(buf, 1));
    TEST_ASSERT_EQUAL_HEX8(0xBE, get_octet(buf, 2));
    TEST_ASSERT_EQUAL_HEX8(0xEF, get_octet(buf, 3));
}

void test_le_4byte_addr(void) {
    s_cfg.addr_sz = 4;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_LITTLE;
    spif_byte_t buf[8] = {0};
    spiflash_test_compose_address(&s_spi, 0xDEADBEEFu, buf, 0);
    TEST_ASSERT_EQUAL_HEX8(0xEF, get_octet(buf, 0));
    TEST_ASSERT_EQUAL_HEX8(0xBE, get_octet(buf, 1));
    TEST_ASSERT_EQUAL_HEX8(0xAD, get_octet(buf, 2));
    TEST_ASSERT_EQUAL_HEX8(0xDE, get_octet(buf, 3));
}

void test_compose_at_offset(void) {
    /* Address must land at octet_off=2 untouched-elsewhere bytes preserved. */
    s_cfg.addr_sz = 2;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_BIG;
    spif_byte_t buf[8];
    SPIF_BYTE_SET(buf, 0, 0xAA);
    SPIF_BYTE_SET(buf, 1, 0xBB);
    SPIF_BYTE_SET(buf, 2, 0x00);
    SPIF_BYTE_SET(buf, 3, 0x00);
    SPIF_BYTE_SET(buf, 4, 0xCC);
    spiflash_test_compose_address(&s_spi, 0x1234u, buf, 2);
    TEST_ASSERT_EQUAL_HEX8(0xAA, get_octet(buf, 0));
    TEST_ASSERT_EQUAL_HEX8(0xBB, get_octet(buf, 1));
    TEST_ASSERT_EQUAL_HEX8(0x12, get_octet(buf, 2));
    TEST_ASSERT_EQUAL_HEX8(0x34, get_octet(buf, 3));
    TEST_ASSERT_EQUAL_HEX8(0xCC, get_octet(buf, 4));
}

void test_be_1byte_addr(void) {
    s_cfg.addr_sz = 1;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_BIG;
    spif_byte_t buf[2] = {0};
    spiflash_test_compose_address(&s_spi, 0xABu, buf, 0);
    TEST_ASSERT_EQUAL_HEX8(0xAB, get_octet(buf, 0));
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_be_3byte_addr);
    RUN_TEST(test_le_3byte_addr);
    RUN_TEST(test_be_4byte_addr);
    RUN_TEST(test_le_4byte_addr);
    RUN_TEST(test_compose_at_offset);
    RUN_TEST(test_be_1byte_addr);
    return UNITY_END();
}
