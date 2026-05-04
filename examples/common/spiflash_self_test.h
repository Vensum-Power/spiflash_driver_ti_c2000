/*
 * spiflash_self_test.h
 *
 * Portable on-target self-test for the spiflash driver. Drop this file into a
 * project for any MCU, point it at a configured spiflash_t plus a logger, and
 * call spif_self_test_run() once after init.
 *
 * The test runs a sequence of read/erase/write/verify operations against a
 * caller-supplied region of the flash, logs progress as plain text, and
 * returns the number of failed sub-tests. A return value of 0 means the
 * driver and the wired-up flash are healthy.
 *
 * The self-test only ever writes inside [test_offset, test_offset+test_size).
 * It assumes the region is at least one erase sector and is erase-block
 * aligned. It does NOT issue chip erase by default.
 */

#ifndef SPIFLASH_SELF_TEST_H_
#define SPIFLASH_SELF_TEST_H_

#include <stdint.h>
#include "spiflash.h"
#include "spiflash_port.h"

#ifdef __cplusplus
extern "C" {
#endif

/**
 * Logger callback. Called with a NUL-terminated C string whenever the test
 * has something to print. Implement it on top of UART/SCI/printf in your
 * project. Lines do NOT include trailing newlines unless the message is a
 * line terminator; users may want to add CR/LF in their UART layer.
 */
typedef void (*spif_log_fn)(const char *str);

/**
 * Optional per-step hook. Called before and after every sub-test with the
 * test name and a result (0 = pass, !=0 = fail) on the "after" call. Useful
 * for blinking a LED or driving a debug GPIO. Pass NULL to skip.
 *
 * @param name   sub-test name, e.g. "erase_sector".
 * @param phase  0 = entering test, 1 = leaving (with result in `result`).
 * @param result valid only when phase == 1; 0 == pass, !=0 == fail.
 */
typedef void (*spif_step_hook_fn)(const char *name, int phase, int result);

typedef struct {
    /** Initialized spiflash_t (after SPIFLASH_init). Required. */
    spiflash_t *spi;

    /** Logger. May be NULL to silence output. */
    spif_log_fn log;

    /** Optional step hook for LED/GPIO. May be NULL. */
    spif_step_hook_fn step_hook;

    /**
     * Address of the test window. MUST be aligned to the smallest erase block
     * supported by the configured cmd_tbl (typically 4 KiB).
     */
    uint32_t test_offset;

    /**
     * Number of octets used by the read/write pattern tests. Must be <= the
     * smallest erase block at test_offset and >= 2 * page_sz so the
     * page-boundary test exercises a real wrap.
     */
    uint32_t test_size;

    /**
     * Scratch buffer for write patterns and readback. MUST hold at least
     * test_size octets. Pass cell-array sized for your byte-storage mode
     * (see SPIF_OCTETS_TO_CELLS in spiflash_port.h).
     */
    spif_byte_t *scratch_a;

    /**
     * Second scratch buffer used for the readback comparison. Same sizing as
     * scratch_a.
     */
    spif_byte_t *scratch_b;

    /**
     * If non-zero, JEDEC ID is checked against this value. The driver places
     * the 3 received octets into the caller's uint32_t in little-endian
     * order:
     *   bits  0..7  = manufacturer
     *   bits  8..15 = memory type
     *   bits 16..23 = capacity
     * The comparison masks bits 24..31 (the high byte is not written by the
     * driver). Set to 0 to log JEDEC but skip the comparison.
     */
    uint32_t expected_jedec;

    /**
     * If non-zero, run a chip-erase test at the very end. This is destructive:
     * the entire flash will be erased to 0xFF. Default is 0 (skip).
     */
    uint8_t enable_chip_erase;
} spif_self_test_ctx_t;

/**
 * Run the full self-test. Returns the number of failed sub-tests (0 = all OK).
 * Logs progress through ctx->log. Safe to call repeatedly.
 */
int spif_self_test_run(const spif_self_test_ctx_t *ctx);

#ifdef __cplusplus
}
#endif

#endif /* SPIFLASH_SELF_TEST_H_ */
