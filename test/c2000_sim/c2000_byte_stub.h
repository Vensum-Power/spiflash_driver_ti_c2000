/*
 * Host-side stub for the TI C2000 __byte() intrinsic.
 *
 * Force-included into the spiflash driver build when SPIFLASH_BYTES_PACKED is
 * defined on a non-C2000 host. Lets us exercise the packed-byte abstraction
 * macros (SPIF_BYTE_GET / SPIF_BYTE_SET) on the dev machine without a TI
 * toolchain.
 *
 * Storage layout: packed two octets per uint16_t in little-endian order
 * (octet 0 in the low 8 bits, octet 1 in the high 8 bits). On the host
 * sizeof(uint16_t) == 2 so __byte((int *)arr, idx) is just *(uint8_t *)arr+idx.
 */

#ifndef C2000_BYTE_STUB_H_
#define C2000_BYTE_STUB_H_

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

static inline uint8_t *_spif_stub_byte_addr(int *array, int byte_idx) {
    return ((uint8_t *)array) + byte_idx;
}

#define __byte(arr, idx) (*_spif_stub_byte_addr((int *)(arr), (int)(idx)))

#ifdef __cplusplus
}
#endif

#endif /* C2000_BYTE_STUB_H_ */
