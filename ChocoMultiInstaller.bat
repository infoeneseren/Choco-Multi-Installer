REM filepath: /c:/Users/Eness/Desktop/chocoInstall.bat
@echo off
chcp 65001 >nul
setlocal EnableDelayedExpansion
title Chocolatey Program Yükleyici

:: Banner ve krediler
color 0a
echo.
echo.
echo.
echo   ╔════════════════════════════════════════════════════════════════════════════════════════════════╗
echo   ║                                                                                                ║
echo   ║      ██████╗██╗  ██╗ ██████╗  ██████╗ ██████╗     ███╗   ███╗██╗   ██╗██╗     ████████╗██╗     ║
echo   ║     ██╔════╝██║  ██║██╔═══██╗██╔════╝██╔═══██╗    ████╗ ████║██║   ██║██║     ╚══██╔══╝██║     ║
echo   ║     ██║     ███████║██║   ██║██║     ██║   ██║    ██╔████╔██║██║   ██║██║        ██║   ██║     ║
echo   ║     ██║     ██╔══██║██║   ██║██║     ██║   ██║    ██║╚██╔╝██║██║   ██║██║        ██║   ██║     ║
echo   ║     ╚██████╗██║  ██║╚██████╔╝╚██████╗╚██████╔╝    ██║ ╚═╝ ██║╚██████╔╝███████╗   ██║   ██║     ║
echo   ║      ╚═════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═════╝     ╚═╝     ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚═╝     ║
echo   ║                                                                                                ║
echo   ║              ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗             ║
echo   ║              ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗            ║
echo   ║              ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝            ║
echo   ║              ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗            ║
echo   ║              ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║            ║
echo   ║              ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝            ║
echo   ║                                                                                                ║
echo   ║                                    CHOCOLATEY MULTI INSTALLER                                  ║ 
echo   ║                            Developed by: https://github.com/EnesER3N                           ║
echo   ║                                         Version: 1.0.0                                         ║ 
echo   ╚════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.

:: Bat dosyasının konumunu al
cd /d "%~dp0"

:: Yönetici kontrolü
net session >nul 2>&1
if %errorLevel% NEQ 0 (
    color 4F
    echo Bu script'i yönetici olarak çalıştırmalısınız!
    pause
    exit /b 1
)

:: Başlangıç zamanı
set "start_time=%time%"

:: Default program listesi
set "all_programs=googlechrome firefox python3 notepadplusplus.install 7zip.install teamviewer git.install vlc git malwarebytes vscode filezilla nodejs-lts powertoys brave intel-dsa anydesk telegram.install discord.install zen-browser termius mobaxterm steam androidstudio"

:main
cls
color 0A
echo.
echo.
echo   ╔════════════════════════════════════════════════════════════════════════════════════════════════╗
echo   ║                                                                                                ║
echo   ║      ██████╗██╗  ██╗ ██████╗  ██████╗ ██████╗     ███╗   ███╗██╗   ██╗██╗     ████████╗██╗     ║
echo   ║     ██╔════╝██║  ██║██╔═══██╗██╔════╝██╔═══██╗    ████╗ ████║██║   ██║██║     ╚══██╔══╝██║     ║
echo   ║     ██║     ███████║██║   ██║██║     ██║   ██║    ██╔████╔██║██║   ██║██║        ██║   ██║     ║
echo   ║     ██║     ██╔══██║██║   ██║██║     ██║   ██║    ██║╚██╔╝██║██║   ██║██║        ██║   ██║     ║
echo   ║     ╚██████╗██║  ██║╚██████╔╝╚██████╗╚██████╔╝    ██║ ╚═╝ ██║╚██████╔╝███████╗   ██║   ██║     ║
echo   ║      ╚═════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═════╝     ╚═╝     ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚═╝     ║
echo   ║                                                                                                ║
echo   ║              ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗             ║
echo   ║              ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗            ║
echo   ║              ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝            ║
echo   ║              ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗            ║
echo   ║              ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║            ║
echo   ║              ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝            ║
echo   ║                                                                                                ║
echo   ║                                    CHOCOLATEY MULTI INSTALLER                                  ║ 
echo   ║                            Developed by: https://github.com/EnesER3N                           ║
echo   ║                                         Version: 1.0.0                                         ║ 
echo   ╚════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
color 0E
echo ╔════════════════════════════════╗
echo ║        PROGRAM LİSTESİ         ║
echo ╚════════════════════════════════╝
color 0B
echo Program Listesi:
color 0B
set "counter=0"
set "program_list="

:: Program listeleme - txt varsa txt'den, yoksa default listeden
if exist "%~dp0programs.txt" (
    for /f "delims=" %%i in (programs.txt) do (
        set /a "counter+=1"
        echo !counter!. %%i
    )
) else (
    for %%i in (%all_programs%) do (
        set /a "counter+=1"
        echo !counter!. %%i
    )
)

echo.
echo ╔══════════════════════════════╗
echo ║  [0] Tümünü Yükle            ║
echo ║  [A] Program Ekle            ║
echo ║  [Q] Çıkış                   ║
echo ╚══════════════════════════════╝
echo.
set /p "choice=Yüklemek istediğiniz programların numaralarını virgülle ayırarak giriniz. : "

:: Program seçimi ve yükleme listesi oluşturma
if /i "%choice%"=="q" exit /b
if /i "%choice%"=="a" (
    if not exist "%~dp0programs.txt" (
        for %%i in (%all_programs%) do echo %%i>> "%~dp0programs.txt"
    )
    set /p newprogram="Eklenecek program adi: "
    echo !newprogram!>> "%~dp0programs.txt"
    goto main
)

set "programs="
if "%choice%"=="0" (
    if exist "%~dp0programs.txt" (
        for /f "delims=" %%i in (programs.txt) do set "programs=!programs! %%i"
    ) else (
        set "programs=%all_programs%"
    )
) else (
    set "counter=0"
    if exist "%~dp0programs.txt" (
        for /f "delims=" %%i in (programs.txt) do (
            set /a "counter+=1"
            for %%a in (%choice%) do (
                if "%%a"=="!counter!" set "programs=!programs! %%i"
            )
        )
    ) else (
        for %%i in (%all_programs%) do (
            set /a "counter+=1"
            for %%a in (%choice%) do (
                if "%%a"=="!counter!" set "programs=!programs! %%i"
            )
        )
    )
)

:: Sayaçlar
set "success_count=0"
set "fail_count=0"
set "failed_installs="

:: Chocolatey kontrolü
echo Chocolatey kontrol ediliyor...
choco --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Chocolatey bulunamadı. Kurulum işlemi başlıyor...
    powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
    IF %ERRORLEVEL% NEQ 0 (
        echo Chocolatey kurulumu başarısız oldu. Lütfen manuel olarak kontrol edin.
        pause
        exit /b 1
    )
    echo Chocolatey başarıyla yüklendi.
) ELSE (
    echo Chocolatey zaten yüklü.
)

:: İlerleme çubuğu ve yükleme
set "total=0"
for %%i in (%programs%) do set /a "total+=1"
set "current=0"

for %%i in (%programs%) do (
    set /a "current+=1"
    set /a "percent=(!current! * 100) / !total!"
    call :ProgressBar !percent!
    echo Yükleniyor: %%i
    
    choco list --local-only %%i | find /i "%%i" >nul 2>&1
    IF !ERRORLEVEL! EQU 0 (
        echo Güncelleniyor: %%i
        choco upgrade %%i -y >nul 2>&1
        IF !ERRORLEVEL! EQU 0 (
            set /a "success_count+=1"
        ) ELSE (
            set /a "fail_count+=1"
            set "failed_installs=!failed_installs! %%i"
        )
    ) ELSE (
        echo Yükleniyor: %%i
        choco install %%i -y >nul 2>&1
        IF !ERRORLEVEL! EQU 0 (
            set /a "success_count+=1"
        ) ELSE (
            set /a "fail_count+=1"
            set "failed_installs=!failed_installs! %%i"
        )
    )
)

:: Bitiş zamanı ve süre hesaplama
set "end_time=%time%"
call :GetDuration "%start_time%" "%end_time%"

:: Sonuç raporu
echo.
color 0D
echo   ╔═══════════════════════════════════════╗
echo   ║           YÜKLEME RAPORU              ║
echo   ╚═══════════════════════════════════════╝
color 0B
echo Toplam program sayısı: %total%
echo Başarılı yüklemeler: %success_count%
echo Başarısız yüklemeler: %fail_count%
if %fail_count% GTR 0 (
    color 0C
    echo.
    echo Başarısız programlar:
    echo !failed_installs!
)
echo.
color 0A
echo Toplam süre: %duration%
color 0D
echo ═══════════════════════════════════════════════════════
color 07
pause
exit /b

:ProgressBar
color 0A
set /a "filled=%~1/2"
set "bar="
for /l %%i in (1,1,%filled%) do set "bar=!bar!█"
for /l %%i in (%filled%,1,50) do set "bar=!bar!░"
echo [!bar!] %~1%%
goto :eof

:GetDuration
set "start=%~1"
set "end=%~2"
set /a "duration_s=(1%end:~6,2%-1%start:~6,2%)+(1%end:~3,2%-1%start:~3,2%)*60+(1%end:~0,2%-1%start:~0,2%)*3600"
set "duration=%duration_s% saniye"
goto :eof
