@echo off
REM Compile-only check for the portable on-target self-test runner under
REM the TI C2000 toolchain. Verifies that examples/common/spiflash_self_test.c
REM is C2000-clean in both byte-storage modes.
REM
REM This does NOT compile examples/c2000/main.c because that file pulls in
REM C2000Ware headers (device.h, driverlib.h) that ship with CCS, not with
REM the bare cl2000 compiler. That file lives in your CCS project.

setlocal EnableDelayedExpansion

if "%CL2000%"=="" set CL2000=cl2000
if "%C2000_SILICON%"=="" set C2000_SILICON=28

if exist "%CL2000%" goto found
where %CL2000% >nul 2>nul
if errorlevel 1 (
    echo [build_c2000_selftest] cl2000 not found ^(CL2000=%CL2000%^).
    exit /b 0
)
:found

if "%C2000_RTS_INCLUDE%"=="" (
    for %%I in ("%CL2000%") do set "CL2000_DIR=%%~dpI"
    set "C2000_RTS_INCLUDE=!CL2000_DIR!..\include"
)

set MODE=%1
if /I "%MODE%"=="packed" (
    set MODE_FLAG=-DSPIFLASH_BYTES_PACKED=1
) else (
    set MODE_FLAG=-DSPIFLASH_BYTES_ONE_PER_WORD=1
)

set OUT=build-c2000
if not exist %OUT% mkdir %OUT%

echo [build_c2000_selftest] silicon=%C2000_SILICON% mode_flag=%MODE_FLAG%

%CL2000% --silicon_version=%C2000_SILICON% --opt_level=2 ^
    --include_path=src --include_path=examples\common ^
    --include_path="%C2000_RTS_INCLUDE%" %MODE_FLAG% ^
    --c99 --skip_assembler ^
    --output_file=%OUT%\spiflash_self_test.obj ^
    examples\common\spiflash_self_test.c
if errorlevel 1 (
    echo [build_c2000_selftest] cl2000 reported errors.
    exit /b 1
)

echo [build_c2000_selftest] OK.
endlocal
