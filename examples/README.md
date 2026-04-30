# spiflash on-target examples

These projects let you compile + flash a self-test to a real board to confirm
that the driver actually talks to your SPI NOR flash chip end-to-end. They
share a portable test runner ([`common/spiflash_self_test.c`](common/spiflash_self_test.c))
and only differ in the per-MCU HAL bindings + log output.

| Folder                                | Target              | Toolchain          |
|---------------------------------------|---------------------|--------------------|
| [`c2000/`](c2000/)                    | TI C2000 (F2837xD / F28004x / F28003x) | CCS + ti-cgt-c2000 |
| [`cortex_m4/`](cortex_m4/)            | ARM Cortex-M4 (STM32F4 reference)      | STM32CubeIDE / arm-gcc |

Each folder has its own README with build + flash instructions and a default
pin mapping. The same test harness runs in both, so the report format is
identical and easy to diff between platforms.

## What the on-target test does

1. Reads the JEDEC ID and (optionally) gates on a known value.
2. Reads the status register.
3. Erases a 4 KiB sector at the configured `test_offset`.
4. Verifies the erased range reads back all `0xFF`.
5. Writes an incrementing pattern over `test_size` octets.
6. Reads it back and bytewise compares.
7. Writes a different pattern starting 100 octets into the sector to force
   the driver to split the write across two pages, then verifies.
8. Confirms the bytes before the offset write are still `0xFF` (catches
   address miscomposition).
9. Optionally runs `SPIFLASH_chip_erase` and verifies the test region.

## What it tells you

A passing report on the C2000 build is the strongest evidence that the C2000
port is correct on real hardware:

- **JEDEC ID readout** exercises the `(uint8_t *)id_dst` aliasing fix that
  was the central C2000 issue.
- **Page-boundary write** exercises `SPIF_BUF_ADVANCE` and the
  `_spiflash_compose_address` byte ordering, both of which go through the
  port abstraction.
- **Verify-erased / readback** exercises every `SPIF_BYTE_GET / SET` macro
  on a buffer larger than `tx_internal_buf`.

A passing report on the Cortex-M4 build proves nothing changed for users on
classic 8-bit-byte targets.

## Don't want to flash hardware?

The repository's host-side test suite (run via `cmake --build build && ctest`)
covers the same logic with a mock HAL, including a simulated packed-byte
build that uses a host-side `__byte()` stub. See the top-level [README](../README.md)
for details. The on-target tests here are complementary - they catch wiring
mistakes, peripheral mis-config and real timing issues that a host test
cannot.
