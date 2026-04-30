# TI C2000 on-target self-test

This folder contains a hardware self-test application for the spiflash driver
on TI C2000 (TMS320F2837xD / F28004x / F28003x). It runs the portable test
suite from [`examples/common/spiflash_self_test.c`](../common/spiflash_self_test.c)
against a real SPI NOR flash and prints a pass/fail report over SCI.

## What gets tested on hardware

The self-test exercises the parts of the driver that depend on actual SPI
behavior:

- JEDEC ID readout (manufacturer/type/capacity logged in plain text).
- Status register read.
- Sector erase (4 KiB).
- All-`0xFF` verification after erase.
- Aligned page write + read-back at the start of the sector.
- Cross-page-boundary write + read-back (catches paging bugs and
  `wr_buf` advance issues).
- Verification that the bytes between the erased base and the offset write
  remain `0xFF` (catches address mis-composition).
- Optional chip erase (off by default, destructive).

## Hardware assumptions

The defaults in [`main.c`](main.c) target a TI LaunchPad with an external SPI
NOR (e.g. a Winbond W25Q64/W25Q128 wired to BoosterPack 1):

| Signal | Pin (default)            | Notes                              |
|--------|--------------------------|------------------------------------|
| MOSI   | GPIO16 (SPISIMOA)        | Mux: `GPIO_16_SPISIMOA`            |
| MISO   | GPIO17 (SPISOMIA)        | Mux: `GPIO_17_SPISOMIA`            |
| CLK    | GPIO18 (SPICLKA)         | Mux: `GPIO_18_SPICLKA`             |
| CS     | GPIO19 (manual)          | Active low, software driven        |
| SCI TX | GPIO29 (SCITXDA)         | 115200 8N1 to USB-UART bridge      |
| SCI RX | GPIO28 (SCIRXDA)         | 115200 8N1 to USB-UART bridge      |
| Vcc    | 3.3 V                    |                                    |
| GND    | GND                      |                                    |

If your board differs, override the pins/peripherals via the macros at the
top of `main.c` or directly in your `device.c` / SysConfig setup.

## Building in CCS / Code Composer Studio

Tested with **CCS 12.4** + **C2000Ware 5.x/6.x** + **ti-cgt-c2000 22.6.0**.

1. **Create a new CCS project** for your device (e.g. `TMS320F28379D`,
   `TMS320F280049C`, ...).  Make sure the SysConfig wizard selects the
   correct LaunchPad / target package, or set up `device.h` /
   `device_init()` manually.
2. **Add the spiflash driver sources** to your project:
   - `src/spiflash.c`
   - `src/spiflash.h`
   - `src/spiflash_port.h`
3. **Add the example sources**:
   - `examples/common/spiflash_self_test.c`
   - `examples/common/spiflash_self_test.h`
   - `examples/c2000/main.c`
4. **Add include paths** (Project Properties → Build → C2000 Compiler → Include
   Options): the directories containing `spiflash.h` and
   `spiflash_self_test.h` (typically `src/` and `examples/common/`).
5. **Pick the byte-storage mode** (Project Properties → Build → C2000 Compiler
   → Predefined Symbols) and add ONE of:
   - `SPIFLASH_BYTES_ONE_PER_WORD=1` (default, simpler)
   - `SPIFLASH_BYTES_PACKED=1` (memory-efficient, requires even-octet aligned
      `addr` and `len`)
6. **Build the project**, then **flash via JTAG/XDS** the way you would any
   other CCS project.
7. **Open a serial terminal** at 115200 baud, 8 data bits, no parity, 1 stop
   bit, on the LaunchPad's USB-UART COM port. Reset the target; you should see
   output similar to:

```
spiflash on-target self-test (TI C2000)
[----------] spiflash self-test starting
            test_offset=0x00000000 test_size=1024
[ RUN     ] jedec_id
           jedec=0x001740EF (mfg=0xEF type=0x40 cap=0x17)
[       OK] jedec_id
[ RUN     ] read_sr
           sr=0x00
[       OK] read_sr
[ RUN     ] erase_sector
[       OK] erase_sector
... (etc) ...
[----------] 7/7 passed
[  PASSED  ] all tests
RESULT: PASS
```

## Quick compile-only check (no hardware)

You can sanity-check the compile without a target board using the
`scripts/build_c2000.bat` / `.sh` helper:

```cmd
set CL2000=C:\ti\ccs1240\ccs\tools\compiler\ti-cgt-c2000_22.6.0.LTS\bin\cl2000.exe
scripts\build_c2000.bat            (one-octet-per-word)
scripts\build_c2000.bat packed     (packed bytes)
```

This compiles only the driver itself and the host can confirm both byte
modes pass without warnings. To compile-check the example sources, add their
paths to the helper or build them inside CCS.

## Troubleshooting

- **JEDEC reads as `0x00FFFFFF` or `0x00000000`** — wiring/pull-up problem,
  CS not toggling, or the SPI clock is too high; lower
  `SPIFLASH_EX_SPI_BITRATE` to 500 kHz to confirm.
- **Erase test fails (region not all-`0xFF`)** — the chip's WREN command did
  not take. Check the SR `BUSY`/`WEL` bits and confirm
  `cmd_tbl.write_enable` matches your part datasheet.
- **`mismatch at offset=N`** — typical signs of either incorrect
  `addr_endian` or a HAL byte-storage mismatch (e.g. flash chip is being
  driven with 16-bit SPI characters). Confirm the SPI peripheral is
  configured for **8-bit characters** (`SPI_setConfig(..., 8)`).
- **Driver hangs in `_spiflash_wait`** — check that `DEVICE_DELAY_US` is
  defined for your device-support header; on some F28004x variants you may
  need `DEVICE_DELAY_US(...)` from `device.h` to be visible.
