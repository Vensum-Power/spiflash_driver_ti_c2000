#!/usr/bin/env bash
# Compile-only check for TI C2000 (cl2000).
#
#   CL2000=$(which cl2000)
#   C2000_SILICON=28
#   ./scripts/build_c2000.sh             # one-octet-per-word mode
#   ./scripts/build_c2000.sh packed      # packed-byte mode
#
# Skips with a clear message if cl2000 is not on PATH.

set -eu

: "${CL2000:=cl2000}"
: "${C2000_SILICON:=28}"

if ! command -v "$CL2000" >/dev/null 2>&1; then
    echo "[build_c2000] cl2000 not found on PATH (CL2000=$CL2000)."
    echo "Set CL2000=<path-to-cl2000> or add it to PATH then re-run."
    exit 0
fi

mode="${1:-}"
if [ "$mode" = "packed" ]; then
    mode_flag="-DSPIFLASH_BYTES_PACKED=1"
else
    mode_flag="-DSPIFLASH_BYTES_ONE_PER_WORD=1"
fi

out=build-c2000
mkdir -p "$out"

if [ -z "${C2000_RTS_INCLUDE:-}" ]; then
    cl2000_path="$(command -v "$CL2000" 2>/dev/null || true)"
    if [ -z "$cl2000_path" ] && [ -x "$CL2000" ]; then
        cl2000_path="$CL2000"
    fi
    if [ -n "$cl2000_path" ]; then
        C2000_RTS_INCLUDE="$(dirname "$cl2000_path")/../include"
    fi
fi

echo "[build_c2000] silicon=$C2000_SILICON mode_flag=$mode_flag"

"$CL2000" --silicon_version="$C2000_SILICON" --opt_level=2 \
    --include_path=src --include_path="$C2000_RTS_INCLUDE" "$mode_flag" \
    --c99 --skip_assembler --output_file="$out/spiflash.obj" src/spiflash.c

echo "[build_c2000] OK."
