@echo off
title Cressi UCI - Windows 11 Fix
echo ======================================================
echo       Cressi UCI - Windows 11 USB Detection Fix
echo ======================================================
echo.

:: 1. Assicura che la cartella C:\Cressi esista
if not exist "C:\Cressi" (
    echo [*] Creazione cartella C:\Cressi...
    mkdir "C:\Cressi" 2>nul
)

:: 2. Scrive il nuovo script listDevice.bat compatibile con Windows 11
echo [*] Applicazione patch a C:\Cressi\listDevice.bat...
(
    echo @echo off
    echo if not exist c:\Cressi mkdir c:\Cressi
    echo powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-CimInstance Win32_PnPEntity | Where-Object { $_.Caption -match '\(COM\d+\)' } | ForEach-Object { $m = [regex]::Match($_.Caption, '(.*)\s*\((COM\d+)\)'); if ($m.Success) { '_' + $m.Groups[2].Value + '=' + $m.Groups[1].Value.Trim() + ' ' } } | Set-Content -Path 'c:\Cressi\device.txt' -Encoding ASCII"
) > "C:\Cressi\listDevice.bat"

:: 3. Rimuove eventuale blocco di sola lettura da device.txt
if exist "C:\Cressi\device.txt" (
    attrib -r "C:\Cressi\device.txt" 2>nul
)

echo.
echo ======================================================
echo  [OK] Patch applicata con successo!
echo  Puoi ora avviare Cressi UCI e collegare il computer.
echo ======================================================
echo.
pause
