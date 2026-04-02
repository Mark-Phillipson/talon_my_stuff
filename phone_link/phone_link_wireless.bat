@echo off
REM phone_link_wireless.bat
REM Usage:
REM   phone_link_wireless.bat           (uses clipboard for host:port, using default device if set)
REM   phone_link_wireless.bat <host:port> (explicit host:port)
REM   phone_link_wireless.bat <device_id> <host:port> (explicit device and host:port)

setlocal enabledelayedexpansion

REM default port if host:port has no colon
set "DEFAULT_PORT=5555"

rem read clipboard if no args
if "%~1"=="" (
    for /f "usebackq delims=" %%x in (`powershell -noprofile -command "(Get-Clipboard -Raw).Trim()"`) do set "CLIPBOARD=%%x"
    set "INPUT=!CLIPBOARD!"
) else (
    set "INPUT=%~1"
)

set "DEVICE=%_current_adb_device%"
if "%DEVICE%"=="" set "DEVICE=%DEFAULT_ADB_DEVICE%"

set "HOSTPORT="
set "EXPLICIT_DEVICE="

if not "%~2"=="" (
    set "EXPLICIT_DEVICE=%~1"
    set "HOSTPORT=%~2"
) else if not "%~1"=="" (
    if defined CLIPBOARD (
        set "HOSTPORT=%INPUT%"
    ) else (
        set "HOSTPORT=%~1"
    )
)

REM normalize hostport
if defined HOSTPORT (
    if "%HOSTPORT%"=="%HOSTPORT::=%" (
        set "HOSTPORT=%HOSTPORT%:%DEFAULT_PORT%"
    )
) else (
    echo [Phone Link] host:port is required (clipboard or argument)
    goto :EOF
)

if defined EXPLICIT_DEVICE (
    set "DEVICE=%EXPLICIT_DEVICE%"
)

if "%DEVICE%"=="" (
    echo [Phone Link] No device selected; use phone_link_set_adb_device first.
    goto :EOF
)

echo [Phone Link] Current device: %DEVICE%
adb devices -l

echo [Phone Link] Setting device %DEVICE% to tcpip %DEFAULT_PORT%
adb -s %DEVICE% tcpip %DEFAULT_PORT%
if errorlevel 1 (
    echo [Phone Link] tcpip request failed for %DEVICE%
    goto :EOF
)

echo [Phone Link] Connecting to %HOSTPORT%
adb connect %HOSTPORT%
if errorlevel 1 (
    echo [Phone Link] connect failed for %HOSTPORT%
    goto :EOF
)

echo [Phone Link] Wireless adb should now be connected to %HOSTPORT%
endlocal
