/*
The MIT License (MIT)

Copyright (c) 2026 Toni Kuikka

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

/**
 * spiflash_port.h
 *
 * Portability layer for the spiflash driver. Lets the same source compile
 * cleanly on classical 8-bit-byte targets (e.g. ARM Cortex-M4) and on the TI
 * C2000 family where CHAR_BIT == 16 and there is no native octet addressing.
 *
 * Two storage modes are offered, selectable at compile time:
 *
 *   SPIFLASH_BYTES_ONE_PER_WORD (default on every target)
 *     Each uint8_t cell holds exactly one octet (0..255). On C2000 the cell is
 *     16 bits wide but only the low 8 bits are meaningful. The HAL must
 *     transmit only the low 8 bits of each cell on the SPI bus. Pointer
 *     arithmetic on byte buffers behaves classically (one cell per octet).
 *
 *   SPIFLASH_BYTES_PACKED (opt-in, intended for TI C2000)
 *     Two octets are packed per 16-bit word using the TI compiler intrinsic
 *     __byte(). Halves the storage footprint of byte buffers but requires:
 *       * every byte read/write to use SPIF_BYTE_GET / SPIF_BYTE_SET,
 *       * pointer advance to be on word boundaries (octet count must be even).
 *     SPI flash pages are always a power-of-two of bytes (>= 256), so as long
 *     as user-supplied addresses and lengths are even-octet aligned, all
 *     internally generated chunk sizes are also even.
 *
 * Define exactly one of the macros above. Defining neither selects
 * SPIFLASH_BYTES_ONE_PER_WORD.
 */

#ifndef SPIFLASH_PORT_H_
#define SPIFLASH_PORT_H_

#include <stdint.h>
#include <limits.h>

#ifdef __cplusplus
extern "C" {
#endif

#if defined(SPIFLASH_BYTES_ONE_PER_WORD) && defined(SPIFLASH_BYTES_PACKED)
#error "Define at most one of SPIFLASH_BYTES_ONE_PER_WORD or SPIFLASH_BYTES_PACKED"
#endif

#if !defined(SPIFLASH_BYTES_ONE_PER_WORD) && !defined(SPIFLASH_BYTES_PACKED)
#define SPIFLASH_BYTES_ONE_PER_WORD 1
#endif

/* On TI C2000 (non-CLA cores) <stdint.h> does NOT define int8_t / uint8_t
 * because the smallest addressable unit is 16 bits. The driver and this
 * header rely on these names, so provide 16-bit-wide aliases when missing.
 * Only the low 8 bits are ever meaningful in either byte-storage mode.
 *
 * Integrators who already pull in compatibility shims that define {u}int8_t
 * can suppress this with -DSPIFLASH_PORT_DONT_DEFINE_UINT8.
 */
#if defined(__TMS320C2000__) && !defined(__TMS320C28XX_CLA__) && \
    !defined(SPIFLASH_PORT_DONT_DEFINE_UINT8)
typedef signed char   int8_t;   /* 16 bits wide on C2000 */
typedef unsigned char uint8_t;  /* 16 bits wide on C2000 */
#endif

/**
 * Storage type for a single octet inside the driver. May be 16 bits wide on
 * C2000; only the low 8 bits are ever meaningful.
 */
typedef uint8_t spif_byte_t;

#if defined(SPIFLASH_BYTES_PACKED)

/* Allow the integrator to override the byte intrinsic if their C2000 toolchain
 * spells it differently.
 */
#ifndef SPIF_PORT_BYTE_INTRINSIC
#define SPIF_PORT_BYTE_INTRINSIC __byte
#endif

/**
 * Read one octet from buf at logical octet index idx.
 */
#define SPIF_BYTE_GET(buf, idx) \
  ((uint8_t)SPIF_PORT_BYTE_INTRINSIC((int *)(buf), (int)(idx)))

/**
 * Write one octet at logical octet index idx in buf.
 */
#define SPIF_BYTE_SET(buf, idx, v) \
  (SPIF_PORT_BYTE_INTRINSIC((int *)(buf), (int)(idx)) = (uint8_t)(v))

/**
 * Number of uint8_t cells required to hold N octets in this mode.
 */
#define SPIF_OCTETS_TO_CELLS(N) (((uint32_t)(N) + 1u) / 2u)

/**
 * Pointer to the cell holding logical octet n. n MUST be even in packed mode.
 */
#define SPIF_BUF_OFFSET(buf, n) ((buf) + ((uint32_t)(n) / 2u))

/**
 * Advance buf by n octets. n MUST be even in packed mode.
 */
#define SPIF_BUF_ADVANCE(buf, n) ((buf) += ((uint32_t)(n) / 2u))

#else /* SPIFLASH_BYTES_ONE_PER_WORD */

#define SPIF_BYTE_GET(buf, idx) \
  ((uint8_t)((buf)[(idx)] & 0xFFu))

#define SPIF_BYTE_SET(buf, idx, v) \
  ((buf)[(idx)] = (spif_byte_t)((v) & 0xFFu))

#define SPIF_OCTETS_TO_CELLS(N) ((uint32_t)(N))

#define SPIF_BUF_OFFSET(buf, n) ((buf) + (n))

#define SPIF_BUF_ADVANCE(buf, n) ((buf) += (n))

#endif

#ifdef __cplusplus
}
#endif

#endif /* SPIFLASH_PORT_H_ */
