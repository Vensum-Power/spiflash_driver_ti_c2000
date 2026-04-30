#!/usr/bin/env bash
# Compile-only check for the portable on-target self-test runner under
# the TI C2000 toolchain (matches scripts/build_c2000_selftest.bat).

set -eu

: "${CL2000:=cl2000}"
: "${C2000_SILICON:=28}"

if ! command -v "$CL2000" >/dev/null 2>&1 && [ ! -x "$CL2000" ]; then
    echo "[build_c2000_selftest] cl2000 not found (CL2000=$CL2000)."
    exit 0
fi

if [ -z "${C2000_RTS_INCLUDE:-}" ]; then
    cl2000_path="$(command -v "$CL2000" 2>/dev/null || true)"
    if [ -z "$cl2000_path" ] && [ -x "$CL2000" ]; then
        cl2000_path="$CL2000"
    fi
    C2000_RTS_INCLUDE="$(dirname "$cl2000_path")/../include"
fi

mode="${1:-}"
if [ "$mode" = "packed" ]; then
    mode_flag="-DSPIFLASH_BYTES_PACKED=1"
else
    mode_flag="-DSPIFLASH_BYTES_ONE_PER_WORD=1"
fi

out=build-c2000
mkdir -p "$out"

echo "[build_c2000_selftest] silicon=$C2000_SILICON mode_flag=$mode_flag"

"$CL2000" --silicon_version="$C2000_SILICON" --opt_level=2 \
    --include_path=src --include_path=examples/common \
    --include_path="$C2000_RTS_INCLUDE" "$mode_flag" \
    --c99 --skip_assembler \
    --output_file="$out/spiflash_self_test.obj" \
    examples/common/spiflash_self_test.c

echo "[build_c2000_selftest] OK."
