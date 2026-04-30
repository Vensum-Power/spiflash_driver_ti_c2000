# ARM Cortex-M4 on-target self-test

This folder contains a hardware self-test for the spiflash driver running on
ARM Cortex-M4 (STM32F4 reference). It runs the same portable test suite as
the C2000 example - only the HAL bindings differ.

The example is provided as a single function, `spiflash_run_self_test()`, so
you can drop it into a CubeMX-generated project without touching the
auto-generated `main()` skeleton.

## What gets tested on hardware

Same as the C2000 example:

- JEDEC ID readout, with optional expected-value gate.
- Status register read.
- Sector erase (4 KiB) + all-`0xFF` verification.
- Aligned page write + read-back.
- Cross-page-boundary write + read-back.
- Verification that the bytes between the erased base and the offset write
  remain `0xFF`.
- Optional chip erase (off by default, destructive).

## Hardware assumptions

The defaults in [`main.c`](main.c) target a Nucleo-F411RE / STM32F4-Discovery
with a Winbond W25Qxx wired to the Arduino-style header:

| Signal | Pin (default) | STM32 alt-function     |
|--------|---------------|------------------------|
| MOSI   | PA7           | SPI1_MOSI              |
| MISO   | PA6           | SPI1_MISO              |
| SCK    | PA5           | SPI1_SCK               |
| CS     | PA4           | GPIO output, push-pull |
| UART TX| PA2           | USART2_TX (ST-LINK USB)|
| UART RX| PA3           | USART2_RX (ST-LINK USB)|

If your board differs, update the macros at the top of `main.c` or pass them
in from the build system.

## Building in STM32CubeIDE

Tested with **STM32CubeIDE 1.15+** + **STM32CubeMX HAL F4 1.27.x** + **arm-gcc 12.x**.

1. **Generate a project** with STM32CubeMX targeting your Cortex-M4 board:
   - Enable **SPI1** in **Full-Duplex Master**, 8-bit data, motorola, CPOL=Low,
     CPHA=1Edge (= SPI mode 0). Prescaler aimed at ~5-10 MHz to start.
   - Enable **USART2** in **Asynchronous mode**, 115200 8N1.
   - Enable **PA4** as **GPIO Output**, level high.
   - Generate code targeting **STM32CubeIDE**.
2. **Add the spiflash driver sources** to your project's `Core/Src` (or any
   folder added to the C compiler include path):
   - `src/spiflash.c`
   - `src/spiflash.h`
   - `src/spiflash_port.h`
3. **Add the example sources**:
   - `examples/common/spiflash_self_test.c`
   - `examples/common/spiflash_self_test.h`
   - `examples/cortex_m4/main.c`  (rename to e.g. `spiflash_example.c` to avoid
     clashing with the CubeMX-generated `main.c`)
4. **Add include paths** (Project Properties → C/C++ Build → Settings → Tool
   Settings → MCU GCC Compiler → Include Paths): the directories containing
   `spiflash.h` and `spiflash_self_test.h`.
5. **Optionally pre-define** `-DSPIFLASH_BYTES_ONE_PER_WORD=1` (this is the
   default and the only meaningful option on Cortex-M4).
6. **Wire the call from `main()`**. In the CubeMX-generated `main.c`, after
   `MX_GPIO_Init()`, `MX_SPI1_Init()` and `MX_USART2_UART_Init()`:

```c
extern int spiflash_run_self_test(void);
spiflash_run_self_test();
```

7. **Build & flash** via STM32CubeIDE's "Run" / ST-LINK programmer.
8. **Open a serial terminal** at 115200 8N1 on the ST-LINK virtual COM port.
   Reset the target; you should see output similar to:

```
spiflash on-target self-test (Cortex-M4)
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

## Porting to other Cortex-M4 boards

The HAL bindings in `main.c` only need three things from the host MCU:

- An SPI master peripheral that can do half-/full-duplex 8-bit transfers.
- A GPIO output for chip-select.
- A blocking millisecond delay function.

Replace `HAL_SPI_Transmit/Receive`, `HAL_GPIO_WritePin` and `HAL_Delay` with
the equivalent calls from your vendor's HAL (NXP MCUXpresso SDK, Nordic
nrfx, Microchip ASF, etc.).

## Troubleshooting

- **JEDEC reads as `0xFFFFFFFF`** - MISO is floating; check wiring and that
  the flash chip has Vcc.
- **JEDEC reads as `0x00000000`** - MOSI/CS not wiggling; check the pin
  pinmux and make sure the CS pin's default state is high (deasserted).
- **`erase_sector` failure with `rc=-24001` (INTERNAL)** - usually means the
  HAL returned an error from `HAL_SPI_Transmit`. Verify the SPI prescaler
  is in range for your part.
- **Mismatch errors** - confirm `addr_endian = SPIFLASH_ENDIANNESS_BIG` for
  every common SPI-NOR (Winbond, Macronix, ISSI). LITTLE is rare.
