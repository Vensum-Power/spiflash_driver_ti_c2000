/*
 * examples/c2000/main.c
 *
 * On-target self-test for TI C2000 (TMS320F2837xD / F28004x / F28003x family).
 *
 * Wires the spiflash driver to:
 *   - C2000Ware driverlib SPI master      (SPIA by default)
 *   - GPIO for the chip-select line
 *   - DEVICE_DELAY_US for blocking waits
 *   - SCIA / SCI_writeCharBlockingFIFO    for log output (115200 8N1)
 *
 * Adapt the macros below to your board. The defaults match a TI LaunchPad
 * (e.g. LAUNCHXL-F28379D or LAUNCHXL-F280049C):
 *   - SPI:  SPIA, GPIO16/17/18 (SIMO/SOMI/CLK)
 *   - CS:   GPIO19 (manual control, active low)
 *   - SCIA: GPIO28/29 (RX/TX) routed to the on-board XDS USB-UART bridge
 *
 * Build by adding this file plus:
 *   - src/spiflash.c
 *   - src/spiflash_port.h
 *   - examples/common/spiflash_self_test.c
 * to your CCS project, alongside the standard device support and driverlib
 * sources from C2000Ware (device.c, driverlib.lib, sysconfig output, etc.).
 *
 * Define one of the byte-storage modes at compile time:
 *   -DSPIFLASH_BYTES_ONE_PER_WORD=1   (default, simplest)
 *   -DSPIFLASH_BYTES_PACKED=1         (memory efficient, see README)
 *
 * Open a serial terminal at 115200 8N1 to read the test report.
 */

/* C2000Ware driverlib + device support headers. The exact paths vary slightly
 * between F28379D / F28004x / F28003x; CCS+SysConfig usually surfaces them via
 * the "device.h" wrapper.
 */
#include "device.h"
#include "driverlib.h"

#include "spiflash.h"
#include "spiflash_port.h"
#include "spiflash_self_test.h"

/* -------------------- BOARD-SPECIFIC SETTINGS -------------------- */

/* SPI peripheral instance and bit-rate. */
#ifndef SPIFLASH_EX_SPI_BASE
#define SPIFLASH_EX_SPI_BASE      SPIA_BASE
#endif
#ifndef SPIFLASH_EX_SPI_BITRATE
#define SPIFLASH_EX_SPI_BITRATE   1000000u   /* 1 MHz to start; raise once stable */
#endif

/* Chip-select GPIO. Active low. */
#ifndef SPIFLASH_EX_CS_GPIO
#define SPIFLASH_EX_CS_GPIO       19u
#endif

/* SCI used for the log. Configure pinmux + clocks in InitSysCtrl/SysConfig. */
#ifndef SPIFLASH_EX_SCI_BASE
#define SPIFLASH_EX_SCI_BASE      SCIA_BASE
#endif

/* Flash-specific settings. The defaults below match a Winbond W25Q64 (8 MiB),
 * which is the SPI flash on the LAUNCHXL-F28379D. Change for your part.
 */
#ifndef SPIFLASH_EX_SIZE_BYTES
#define SPIFLASH_EX_SIZE_BYTES    (8u * 1024u * 1024u)
#endif
#ifndef SPIFLASH_EX_PAGE_SIZE
#define SPIFLASH_EX_PAGE_SIZE     256u
#endif
#ifndef SPIFLASH_EX_ADDR_SIZE
#define SPIFLASH_EX_ADDR_SIZE     3u
#endif
#ifndef SPIFLASH_EX_EXPECTED_JEDEC
#define SPIFLASH_EX_EXPECTED_JEDEC 0u  /* set to 0xMMMMMMMM to gate on JEDEC ID */
#endif

/* Address inside flash where the test will write. Must be aligned to the
 * smallest erase block (4 KiB by default).
 */
#ifndef SPIFLASH_EX_TEST_OFFSET
#define SPIFLASH_EX_TEST_OFFSET   0u
#endif
#ifndef SPIFLASH_EX_TEST_SIZE
#define SPIFLASH_EX_TEST_SIZE     1024u
#endif

/* Whether to issue chip erase as the final step. Disabled by default since
 * it wipes EVERYTHING on the flash.
 */
#ifndef SPIFLASH_EX_DO_CHIP_ERASE
#define SPIFLASH_EX_DO_CHIP_ERASE 0u
#endif

/* -------------------- LOGGING (SCIA UART) ------------------------ */

static void log_str(const char *s) {
    while (*s) {
        SCI_writeCharBlockingFIFO(SPIFLASH_EX_SCI_BASE, (uint16_t)(*s & 0xFFu));
        s++;
    }
}

/* -------------------- HAL HOOKS ---------------------------------- */

static void cs_assert(void) {
    GPIO_writePin(SPIFLASH_EX_CS_GPIO, 0);
}
static void cs_deassert(void) {
    GPIO_writePin(SPIFLASH_EX_CS_GPIO, 1);
}

static void spi_send_octet(uint8_t b) {
    /* The C2000 SPI peripheral is configured for 8-bit characters; the
     * 16-bit FIFO holds the data left-justified. Drive only the low 8 bits.
     */
    SPI_writeDataBlockingFIFO(SPIFLASH_EX_SPI_BASE,
                              (uint16_t)((b & 0xFFu) << 8));
    /* Discard the dummy byte received during TX. */
    (void)SPI_readDataBlockingFIFO(SPIFLASH_EX_SPI_BASE);
}

static uint8_t spi_recv_octet(void) {
    SPI_writeDataBlockingFIFO(SPIFLASH_EX_SPI_BASE, 0x0000u);
    uint16_t v = SPI_readDataBlockingFIFO(SPIFLASH_EX_SPI_BASE);
    return (uint8_t)(v & 0xFFu);
}

static int hal_txrx(struct spiflash_s *spi, const uint8_t *tx_data,
                    uint32_t tx_len, uint8_t *rx_data, uint32_t rx_len) {
    (void)spi;
    if (tx_len > 0u && tx_data != NULL) {
        for (uint32_t i = 0; i < tx_len; ++i) {
            spi_send_octet(SPIF_BYTE_GET(tx_data, i));
        }
    }
    if (rx_len > 0u && rx_data != NULL) {
        for (uint32_t i = 0; i < rx_len; ++i) {
            SPIF_BYTE_SET(rx_data, i, spi_recv_octet());
        }
    }
    return SPIFLASH_OK;
}

static void hal_cs(struct spiflash_s *spi, uint8_t cs) {
    (void)spi;
    if (cs) cs_assert();
    else    cs_deassert();
}

static void hal_wait(struct spiflash_s *spi, uint32_t ms) {
    (void)spi;
    /* DEVICE_DELAY_US is provided by C2000Ware device.h. */
    while (ms--) {
        DEVICE_DELAY_US(1000u);
    }
}

static const spiflash_hal_t HAL = {
    ._spiflash_spi_txrx = hal_txrx,
    ._spiflash_spi_cs   = hal_cs,
    ._spiflash_wait     = hal_wait,
};

/* -------------------- SPI / GPIO / SCI INIT ---------------------- */

static void init_chip_select_gpio(void) {
    GPIO_setPadConfig(SPIFLASH_EX_CS_GPIO, GPIO_PIN_TYPE_STD);
    GPIO_setPinConfig(GPIO_19_GPIO19); /* update if you remap */
    GPIO_setDirectionMode(SPIFLASH_EX_CS_GPIO, GPIO_DIR_MODE_OUT);
    GPIO_writePin(SPIFLASH_EX_CS_GPIO, 1);
}

static void init_spi_master(void) {
    SPI_disableModule(SPIFLASH_EX_SPI_BASE);
    SPI_setConfig(SPIFLASH_EX_SPI_BASE,
                  DEVICE_LSPCLK_FREQ,
                  SPI_PROT_POL0PHA0,    /* CPOL=0 CPHA=0 (mode 0) */
                  SPI_MODE_MASTER,
                  SPIFLASH_EX_SPI_BITRATE,
                  8u);                  /* 8-bit characters */
    SPI_disableLoopback(SPIFLASH_EX_SPI_BASE);
    SPI_setEmulationMode(SPIFLASH_EX_SPI_BASE, SPI_EMULATION_FREE_RUN);
    SPI_enableFIFO(SPIFLASH_EX_SPI_BASE);
    SPI_clearInterruptStatus(SPIFLASH_EX_SPI_BASE, SPI_INT_RXFF);
    SPI_enableModule(SPIFLASH_EX_SPI_BASE);
}

static void init_sci_for_log(void) {
    SCI_performSoftwareReset(SPIFLASH_EX_SCI_BASE);
    SCI_setConfig(SPIFLASH_EX_SCI_BASE,
                  DEVICE_LSPCLK_FREQ,
                  115200u,
                  (SCI_CONFIG_WLEN_8 | SCI_CONFIG_STOP_ONE | SCI_CONFIG_PAR_NONE));
    SCI_resetChannels(SPIFLASH_EX_SCI_BASE);
    SCI_resetRxFIFO(SPIFLASH_EX_SCI_BASE);
    SCI_resetTxFIFO(SPIFLASH_EX_SCI_BASE);
    SCI_clearInterruptStatus(SPIFLASH_EX_SCI_BASE, SCI_INT_TXFF | SCI_INT_RXFF);
    SCI_enableFIFO(SPIFLASH_EX_SCI_BASE);
    SCI_enableModule(SPIFLASH_EX_SCI_BASE);
    SCI_performSoftwareReset(SPIFLASH_EX_SCI_BASE);
}

/* -------------------- DRIVER STATE + BUFFERS --------------------- */

static spiflash_t s_spi;

static const spiflash_cmd_tbl_t s_cmds = SPIFLASH_CMD_TBL_STANDARD;

static const spiflash_config_t s_cfg = {
    .sz                = SPIFLASH_EX_SIZE_BYTES,
    .page_sz           = SPIFLASH_EX_PAGE_SIZE,
    .addr_sz           = SPIFLASH_EX_ADDR_SIZE,
    .addr_dummy_sz     = 0,
    .addr_endian       = SPIFLASH_ENDIANNESS_BIG,
    .sr_write_ms       = 10,
    .page_program_ms   = 2,
    .page_erase_ms     = 0,
    .block_erase_4_ms  = 100,
    .block_erase_8_ms  = 0,
    .block_erase_16_ms = 0,
    .block_erase_32_ms = 175,
    .block_erase_64_ms = 300,
    .chip_erase_ms     = 30000,
};

static spif_byte_t s_scratch_a[SPIF_OCTETS_TO_CELLS(SPIFLASH_EX_TEST_SIZE)];
static spif_byte_t s_scratch_b[SPIF_OCTETS_TO_CELLS(SPIFLASH_EX_TEST_SIZE)];

/* -------------------- ENTRY -------------------------------------- */

void main(void) {
    Device_init();
    Device_initGPIO();
    Interrupt_initModule();
    Interrupt_initVectorTable();

    init_chip_select_gpio();
    init_spi_master();
    init_sci_for_log();

    log_str("\r\nspiflash on-target self-test (TI C2000)\r\n");

    SPIFLASH_init(&s_spi, &s_cfg, &s_cmds, &HAL,
                  /*async_cb=*/NULL,
                  SPIFLASH_SYNCHRONOUS,
                  /*user_data=*/NULL);

    spif_self_test_ctx_t ctx = {
        .spi               = &s_spi,
        .log               = log_str,
        .step_hook         = NULL,
        .test_offset       = SPIFLASH_EX_TEST_OFFSET,
        .test_size         = SPIFLASH_EX_TEST_SIZE,
        .scratch_a         = s_scratch_a,
        .scratch_b         = s_scratch_b,
        .expected_jedec    = SPIFLASH_EX_EXPECTED_JEDEC,
        .enable_chip_erase = SPIFLASH_EX_DO_CHIP_ERASE,
    };

    int failures = spif_self_test_run(&ctx);
    log_str(failures == 0 ? "RESULT: PASS\r\n" : "RESULT: FAIL\r\n");

    /* Park here so the report stays on screen and the test can be re-flashed. */
    for (;;) {
        DEVICE_DELAY_US(1000000u);
    }
}
