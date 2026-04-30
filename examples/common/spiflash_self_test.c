/*
 * spiflash_self_test.c - portable on-target self-test for the spiflash driver.
 *
 * Implementation notes:
 *  - All buffer accesses go through SPIF_BYTE_GET / SPIF_BYTE_SET so the same
 *    file works in both SPIFLASH_BYTES_ONE_PER_WORD and SPIFLASH_BYTES_PACKED
 *    on TI C2000.
 *  - We avoid <stdio.h> and snprintf entirely; messages are emitted using a
 *    tiny in-house formatter so the test can run on stripped-down embedded
 *    targets that do not pull in the C stdio family.
 */

#include "spiflash_self_test.h"

#include <string.h>

/* ------------------------------------------------------------------ */
/* Lightweight string emitter.                                         */
/* ------------------------------------------------------------------ */

static void emit(const spif_self_test_ctx_t *ctx, const char *s) {
    if (ctx->log) ctx->log(s);
}

static void emit_u32(const spif_self_test_ctx_t *ctx, uint32_t v) {
    char buf[12];
    int i = 0;
    if (v == 0) {
        emit(ctx, "0");
        return;
    }
    char tmp[12];
    while (v && i < 11) {
        tmp[i++] = (char)('0' + (v % 10u));
        v /= 10u;
    }
    int j = 0;
    while (i > 0 && j < 11) {
        buf[j++] = tmp[--i];
    }
    buf[j] = '\0';
    emit(ctx, buf);
}

static void emit_hex32(const spif_self_test_ctx_t *ctx, uint32_t v) {
    static const char *hex = "0123456789ABCDEF";
    char buf[11];
    buf[0] = '0';
    buf[1] = 'x';
    for (int i = 0; i < 8; ++i) {
        buf[2 + i] = hex[(v >> (28 - 4 * i)) & 0xFu];
    }
    buf[10] = '\0';
    emit(ctx, buf);
}

static void emit_hex8(const spif_self_test_ctx_t *ctx, uint8_t v) {
    static const char *hex = "0123456789ABCDEF";
    char buf[5];
    buf[0] = '0';
    buf[1] = 'x';
    buf[2] = hex[(v >> 4) & 0xFu];
    buf[3] = hex[v & 0xFu];
    buf[4] = '\0';
    emit(ctx, buf);
}

#define LOG(s)        emit(ctx, (s))
#define LOG_U32(v)    emit_u32(ctx, (v))
#define LOG_HEX32(v)  emit_hex32(ctx, (v))
#define LOG_HEX8(v)   emit_hex8(ctx, (v))
#define NL            emit(ctx, "\r\n")

/* ------------------------------------------------------------------ */
/* Sub-tests.                                                          */
/* ------------------------------------------------------------------ */

static void enter(const spif_self_test_ctx_t *ctx, const char *name) {
    LOG("[ RUN     ] ");
    LOG(name);
    NL;
    if (ctx->step_hook) ctx->step_hook(name, 0, 0);
}

static void leave(const spif_self_test_ctx_t *ctx, const char *name, int rc) {
    LOG(rc == 0 ? "[       OK] " : "[  FAILED ] ");
    LOG(name);
    if (rc != 0) {
        LOG(" (rc=");
        LOG_U32((uint32_t)rc);
        LOG(")");
    }
    NL;
    if (ctx->step_hook) ctx->step_hook(name, 1, rc);
}

static int t_jedec(const spif_self_test_ctx_t *ctx) {
    uint32_t id = 0;
    int rc = SPIFLASH_read_jedec_id(ctx->spi, &id);
    if (rc != SPIFLASH_OK) return rc;
    LOG("           jedec=");
    LOG_HEX32(id);
    LOG(" (mfg=");
    LOG_HEX8((uint8_t)(id & 0xFFu));
    LOG(" type=");
    LOG_HEX8((uint8_t)((id >> 8) & 0xFFu));
    LOG(" cap=");
    LOG_HEX8((uint8_t)((id >> 16) & 0xFFu));
    LOG(")");
    NL;
    if (ctx->expected_jedec != 0u && (id & 0x00FFFFFFu) != (ctx->expected_jedec & 0x00FFFFFFu)) {
        LOG("           expected=");
        LOG_HEX32(ctx->expected_jedec & 0x00FFFFFFu);
        NL;
        return -1;
    }
    return 0;
}

static int t_read_sr(const spif_self_test_ctx_t *ctx) {
    uint8_t sr = 0;
    int rc = SPIFLASH_read_sr(ctx->spi, &sr);
    if (rc != SPIFLASH_OK) return rc;
    LOG("           sr=");
    LOG_HEX8(sr);
    NL;
    return 0;
}

static int t_erase_sector(const spif_self_test_ctx_t *ctx) {
    /* Erase the smallest block that covers test_size starting at test_offset.
     * For an erase-block-aligned offset and a test_size <= one block this is
     * exactly one erase command.
     */
    int rc = SPIFLASH_erase(ctx->spi, ctx->test_offset, ctx->test_size);
    if (rc != SPIFLASH_OK) return rc;
    return 0;
}

static int verify_erased(const spif_self_test_ctx_t *ctx, uint32_t off, uint32_t len) {
    int rc = SPIFLASH_read(ctx->spi, off, len, (uint8_t *)ctx->scratch_a);
    if (rc != SPIFLASH_OK) return rc;
    for (uint32_t i = 0; i < len; ++i) {
        if (SPIF_BYTE_GET(ctx->scratch_a, i) != 0xFFu) {
            LOG("           non-FF at offset=");
            LOG_U32(off + i);
            LOG(" got=");
            LOG_HEX8(SPIF_BYTE_GET(ctx->scratch_a, i));
            NL;
            return -2;
        }
    }
    return 0;
}

static int t_verify_erased(const spif_self_test_ctx_t *ctx) {
    return verify_erased(ctx, ctx->test_offset, ctx->test_size);
}

static void fill_pattern(const spif_self_test_ctx_t *ctx, uint32_t len, uint8_t seed) {
    for (uint32_t i = 0; i < len; ++i) {
        SPIF_BYTE_SET(ctx->scratch_a, i, (uint8_t)((seed + i) & 0xFFu));
    }
}

static int compare_pattern(const spif_self_test_ctx_t *ctx, uint32_t len, uint8_t seed) {
    for (uint32_t i = 0; i < len; ++i) {
        uint8_t got = SPIF_BYTE_GET(ctx->scratch_b, i);
        uint8_t exp = (uint8_t)((seed + i) & 0xFFu);
        if (got != exp) {
            LOG("           mismatch at offset=");
            LOG_U32(i);
            LOG(" exp=");
            LOG_HEX8(exp);
            LOG(" got=");
            LOG_HEX8(got);
            NL;
            return -3;
        }
    }
    return 0;
}

static int t_write_read_pattern(const spif_self_test_ctx_t *ctx) {
    fill_pattern(ctx, ctx->test_size, 0x10);
    int rc = SPIFLASH_write(ctx->spi, ctx->test_offset, ctx->test_size,
                            (const uint8_t *)ctx->scratch_a);
    if (rc != SPIFLASH_OK) return rc;
    rc = SPIFLASH_read(ctx->spi, ctx->test_offset, ctx->test_size,
                       (uint8_t *)ctx->scratch_b);
    if (rc != SPIFLASH_OK) return rc;
    return compare_pattern(ctx, ctx->test_size, 0x10);
}

static int t_page_boundary(const spif_self_test_ctx_t *ctx) {
    /* Re-erase, then start the write 100 octets into the first page so the
     * driver has to split the program across at least two pages. Length is
     * test_size; we cap it to fit inside the erased sector starting at
     * (test_offset + 100).
     */
    int rc = SPIFLASH_erase(ctx->spi, ctx->test_offset, ctx->test_size);
    if (rc != SPIFLASH_OK) return rc;

    uint32_t off = ctx->test_offset + 100u;
    uint32_t max_len = (ctx->test_offset + ctx->test_size) - off;
    uint32_t len = ctx->test_size > max_len ? max_len : ctx->test_size;

    fill_pattern(ctx, len, 0xA5);
    rc = SPIFLASH_write(ctx->spi, off, len, (const uint8_t *)ctx->scratch_a);
    if (rc != SPIFLASH_OK) return rc;
    rc = SPIFLASH_read(ctx->spi, off, len, (uint8_t *)ctx->scratch_b);
    if (rc != SPIFLASH_OK) return rc;
    return compare_pattern(ctx, len, 0xA5);
}

static int t_unwritten_remains_ff(const spif_self_test_ctx_t *ctx) {
    /* After the page-boundary write [test_offset+100, test_offset+100+len)
     * the [test_offset, test_offset+100) region MUST still read 0xFF.
     */
    return verify_erased(ctx, ctx->test_offset, 100u);
}

static int t_chip_erase(const spif_self_test_ctx_t *ctx) {
    int rc = SPIFLASH_chip_erase(ctx->spi);
    if (rc != SPIFLASH_OK) return rc;
    /* Spot-check a small region. */
    return verify_erased(ctx, ctx->test_offset, ctx->test_size);
}

/* ------------------------------------------------------------------ */
/* Driver.                                                             */
/* ------------------------------------------------------------------ */

typedef struct {
    const char *name;
    int (*fn)(const spif_self_test_ctx_t *ctx);
} step_t;

int spif_self_test_run(const spif_self_test_ctx_t *ctx) {
    if (ctx == NULL || ctx->spi == NULL || ctx->scratch_a == NULL
            || ctx->scratch_b == NULL || ctx->test_size == 0) {
        return -1;
    }

    LOG("[----------] spiflash self-test starting"); NL;
    LOG("            test_offset=");
    LOG_HEX32(ctx->test_offset);
    LOG(" test_size=");
    LOG_U32(ctx->test_size);
    NL;

    static const step_t base_steps[] = {
        { "jedec_id",          t_jedec },
        { "read_sr",           t_read_sr },
        { "erase_sector",      t_erase_sector },
        { "verify_erased",     t_verify_erased },
        { "write_read",        t_write_read_pattern },
        { "page_boundary",     t_page_boundary },
        { "unwritten_remains_ff", t_unwritten_remains_ff },
    };

    int failures = 0;
    int total = 0;
    for (unsigned i = 0; i < sizeof(base_steps) / sizeof(base_steps[0]); ++i) {
        enter(ctx, base_steps[i].name);
        int rc = base_steps[i].fn(ctx);
        leave(ctx, base_steps[i].name, rc);
        if (rc != 0) failures++;
        total++;
    }

    if (ctx->enable_chip_erase) {
        enter(ctx, "chip_erase");
        int rc = t_chip_erase(ctx);
        leave(ctx, "chip_erase", rc);
        if (rc != 0) failures++;
        total++;
    }

    LOG("[----------] ");
    LOG_U32((uint32_t)(total - failures));
    LOG("/");
    LOG_U32((uint32_t)total);
    LOG(" passed");
    NL;
    if (failures == 0) {
        LOG("[  PASSED  ] all tests"); NL;
    } else {
        LOG("[  FAILED  ] ");
        LOG_U32((uint32_t)failures);
        LOG(" sub-test(s)");
        NL;
    }
    return failures;
}
