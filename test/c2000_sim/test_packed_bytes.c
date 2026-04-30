/*
 * test_packed_bytes.c
 *
 * Builds against a copy of the spiflash driver compiled with
 * SPIFLASH_BYTES_PACKED + a host-side __byte() stub. Verifies that:
 *   - The byte-access macros route through __byte() correctly.
 *   - End-to-end JEDEC + write/read roundtrip still works.
 *
 * This is NOT a substitute for compiling against the real TI cl2000 compiler,
 * but it catches obvious refactor regressions in the abstraction layer.
 */

#include <stdint.h>
#include <string.h>

#include "unity.h"
#include "spiflash.h"
#include "spiflash_port.h"
#include "mock_hal.h"

#if !defined(SPIFLASH_BYTES_PACKED)
#error "test_packed_bytes.c must be compiled with -DSPIFLASH_BYTES_PACKED"
#endif

static spiflash_t s_spi;
static spiflash_config_t s_cfg;
static spiflash_cmd_tbl_t s_cmd;
static mock_hal_t s_mock;

#define FLASH_OCTETS 4096u
static uint8_t s_storage[FLASH_OCTETS];

static void common_init(int with_fakeflash) {
    mock_hal_init(&s_mock);
    s_cmd = SPIFLASH_CMD_TBL_STANDARD;
    memset(&s_cfg, 0, sizeof(s_cfg));
    s_cfg.sz = FLASH_OCTETS;
    s_cfg.page_sz = 256;
    s_cfg.addr_sz = 3;
    s_cfg.addr_endian = SPIFLASH_ENDIANNESS_BIG;
    s_cfg.page_program_ms = 1;

    if (with_fakeflash) {
        mock_hal_fakeflash_attach(&s_mock, s_storage, FLASH_OCTETS, &s_cmd, 3,
                                  SPIFLASH_ENDIANNESS_BIG);
    }
    SPIFLASH_init(&s_spi, &s_cfg, &s_cmd, &s_mock.hal, NULL,
                  SPIFLASH_SYNCHRONOUS, &s_mock);
}

void setUp(void) {
    common_init(/*with_fakeflash=*/0);
}

void tearDown(void) {}

void test_byte_macros_via_stub(void) {
    /* SPIF_BYTE_SET / SPIF_BYTE_GET must round-trip through the __byte stub.
     * On a real C2000 each spif_byte_t cell holds 2 octets via __byte(); on the
     * host with our stub each cell holds 1 octet. Size the buffer in OCTETS so
     * the test works in either model.
     */
    spif_byte_t buf[16];
    memset(buf, 0, sizeof(buf));
    for (uint32_t i = 0; i < 16; ++i) {
        SPIF_BYTE_SET(buf, i, (uint8_t)(0xC0 + i));
    }
    for (uint32_t i = 0; i < 16; ++i) {
        TEST_ASSERT_EQUAL_HEX8((uint8_t)(0xC0 + i), SPIF_BYTE_GET(buf, i));
    }
}

void test_jedec_id_packed(void) {
    const uint8_t id_bytes[3] = {0xEF, 0x40, 0x18};
    mock_hal_set_rx(&s_mock, id_bytes, sizeof(id_bytes));

    uint32_t id = 0;
    int rc = SPIFLASH_read_jedec_id(&s_spi, &id);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);
    TEST_ASSERT_EQUAL_HEX32(0x001840EFu, id);
}

void test_write_read_roundtrip_packed(void) {
    common_init(/*with_fakeflash=*/1);

    spif_byte_t payload[256];
    for (uint32_t i = 0; i < 256; ++i) {
        SPIF_BYTE_SET(payload, i, (uint8_t)(i ^ 0x5A));
    }

    int rc = SPIFLASH_write(&s_spi, 0u, 256u, (const uint8_t *)payload);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);

    spif_byte_t readback[256];
    memset(readback, 0, sizeof(readback));
    rc = SPIFLASH_read(&s_spi, 0u, 256u, (uint8_t *)readback);
    TEST_ASSERT_EQUAL_INT(SPIFLASH_OK, rc);

    for (uint32_t i = 0; i < 256; ++i) {
        TEST_ASSERT_EQUAL_HEX8(SPIF_BYTE_GET(payload, i),
                               SPIF_BYTE_GET(readback, i));
    }
}

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(test_byte_macros_via_stub);
    RUN_TEST(test_jedec_id_packed);
    RUN_TEST(test_write_read_roundtrip_packed);
    return UNITY_END();
}
