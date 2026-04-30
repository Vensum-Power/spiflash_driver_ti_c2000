@echo off
REM Compile-only check for TI C2000 (cl2000). Verifies the spiflash driver
REM source compiles with CHAR_BIT == 16 semantics in both byte-storage modes.
REM Skips with a clear message if cl2000 is not on PATH.
REM
REM Override the compiler location with: set CL2000=C:\path\to\cl2000.exe
REM Override silicon target with:        set C2000_SILICON=28
REM
REM Usage:
REM   scripts\build_c2000.bat            (one-octet-per-word mode)
REM   scripts\build_c2000.bat packed     (packed-byte mode)

setlocal EnableDelayedExpansion

if "%CL2000%"=="" set CL2000=cl2000
if "%C2000_SILICON%"=="" set C2000_SILICON=28

REM Accept either a bare command name (looked up on PATH) or an absolute path.
if exist "%CL2000%" goto found
where %CL2000% >nul 2>nul
if errorlevel 1 (
    echo [build_c2000] cl2000 not found ^(CL2000=%CL2000%^).
    echo Set CL2000=^<path-to-cl2000.exe^> or add it to PATH then re-run.
    exit /b 0
)
:found

set MODE=%1
if /I "%MODE%"=="packed" (
    set MODE_FLAG=-DSPIFLASH_BYTES_PACKED=1
) else (
    set MODE_FLAG=-DSPIFLASH_BYTES_ONE_PER_WORD=1
)

set OUT=build-c2000
if not exist %OUT% mkdir %OUT%

REM Locate the runtime library headers (stdint.h etc.) that ship with cl2000.
if "%C2000_RTS_INCLUDE%"=="" (
    for %%I in ("%CL2000%") do set "CL2000_DIR=%%~dpI"
    set "C2000_RTS_INCLUDE=!CL2000_DIR!..\include"
)

echo [build_c2000] silicon=%C2000_SILICON% mode_flag=%MODE_FLAG%

%CL2000% --silicon_version=%C2000_SILICON% --opt_level=2 ^
    --include_path=src --include_path="%C2000_RTS_INCLUDE%" %MODE_FLAG% ^
    --c99 --skip_assembler --output_file=%OUT%\spiflash.obj src\spiflash.c
if errorlevel 1 (
    echo [build_c2000] cl2000 reported errors.
    exit /b 1
)

echo [build_c2000] OK.
endlocal
