/*
 * Minimal "white-box" hooks for unit-testing internal spiflash helpers.
 *
 * The driver source declares these helpers as static. We re-declare a small
 * surface here and route tests at it via a thin wrapper compiled inside the
 * test executable (see spiflash_test_hooks.c).
 */

#ifndef SPIFLASH_TEST_HOOKS_H_
#define SPIFLASH_TEST_HOOKS_H_

#include <stdint.h>
#include "spiflash.h"
#include "spiflash_port.h"

#ifdef __cplusplus
extern "C" {
#endif

void spiflash_test_compose_address(spiflash_t *spi, uint32_t addr,
                                   spif_byte_t *buf, uint32_t octet_off);

uint32_t spiflash_test_get_largest_erase_area(spiflash_t *spi,
                                              uint32_t addr, uint32_t len);

#ifdef __cplusplus
}
#endif

#endif /* SPIFLASH_TEST_HOOKS_H_ */
