/*
 * test_erase_area.c
 *
 * Verifies that _spiflash_get_largest_erase_area picks the biggest aligned
 * erase block covering (addr, len) given the cmd_tbl's supported sizes.
 */

#include <stdint.h>
#include <string.h>

#include "unity.h"
#include "spiflash.h"
#include "spiflash_test_hooks.h"

static spiflash_t s_spi;
static spiflash_config_t s_cfg;
static spiflash_cmd_tbl_t s_cmd;

void setUp(void) {
    memset(&s_spi, 0, sizeof(s_spi));
    memset(&s_cfg, 0, sizeof(s_cfg));
    s_cmd = SPIFLASH_CMD_TBL_STANDARD;
    s_cfg.page_sz = 256;
    s_cfg.addr_sz = 3;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_BIG;
    s_spi.cfg = &s_cfg;
    s_spi.cmd_tbl = &s_cmd;
}

void tearDown(void) {}

void test_unaligned_length_returns_zero(void) {
    /* Length not multiple of smallest erase (4 KiB by default). */
    TEST_ASSERT_EQUAL_UINT32(0u,
        spiflash_test_get_largest_erase_area(&s_spi, 0, 1234u));
}

void test_4k_aligned_length_picks_4k(void) {
    /* addr unaligned to bigger blocks but 4 KiB aligned. */
    TEST_ASSERT_EQUAL_UINT32(4u * 1024u,
        spiflash_test_get_largest_erase_area(&s_spi, 4u * 1024u, 4u * 1024u));
}

void test_64k_when_perfectly_aligned(void) {
    /* addr=0, len=64KiB -> 64 KiB block. */
    TEST_ASSERT_EQUAL_UINT32(64u * 1024u,
        spiflash_test_get_largest_erase_area(&s_spi, 0, 64u * 1024u));
}

void test_addr_under_64k_picks_smaller(void) {
    /* addr only 32 KiB aligned -> 32 KiB block, not 64 KiB. */
    TEST_ASSERT_EQUAL_UINT32(32u * 1024u,
        spiflash_test_get_largest_erase_area(&s_spi, 32u * 1024u, 64u * 1024u));
}

void test_unsupported_block_falls_back(void) {
    /* Disable 32k cmd; addr 32 KiB aligned, len 64 KiB -> 4 KiB chunks. */
    s_cmd.block_erase_32 = 0;
    s_cmd.block_erase_8 = 0;
    s_cmd.block_erase_16 = 0;
    TEST_ASSERT_EQUAL_UINT32(4u * 1024u,
        spiflash_test_get_largest_erase_area(&s_spi, 32u * 1024u, 64u * 1024u));
}

void test_no_erase_cmds_returns_zero(void) {
    s_cmd.block_erase_4 = 0;
    s_cmd.block_erase_8 = 0;
    s_cmd.block_erase_16 = 0;
    s_cmd.block_erase_32 = 0;
    s_cmd.block_erase_64 = 0;
    s_cmd.page_erase = 0;
    TEST_ASSERT_EQUAL_UINT32(0u,
        spiflash_test_get_largest_erase_area(&s_spi, 0, 4u * 1024u));
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_unaligned_length_returns_zero);
    RUN_TEST(test_4k_aligned_length_picks_4k);
    RUN_TEST(test_64k_when_perfectly_aligned);
    RUN_TEST(test_addr_under_64k_picks_smaller);
    RUN_TEST(test_unsupported_block_falls_back);
    RUN_TEST(test_no_erase_cmds_returns_zero);
    return UNITY_END();
}
