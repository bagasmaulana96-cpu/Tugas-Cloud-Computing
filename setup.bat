@echo off
title SceneVault - Auto Setup
color 0B

echo ========================================================
echo      Menjalankan Cloud Emulator dan Web Server
echo ========================================================
echo.

echo [1/3] Menyiapkan Jalur Java 21 (Bypass)...
set JAVA_HOME=C:\Program Files\Java\jdk-21.0.10
set PATH=%JAVA_HOME%\bin;%PATH%

echo [2/3] Menyalakan Mesin Firebase Emulator...
:: Membuka jendela baru khusus untuk Firebase dengan Java 21 yang sudah dipaksa
start cmd /k "set JAVA_HOME=C:\Program Files\Java\jdk-21.0.10 & set PATH=C:\Program Files\Java\jdk-21.0.10\bin;%%PATH%% & npx firebase emulators:start"

echo Menunggu 10 detik agar infrastruktur Cloud siap...
timeout /t 10

echo [3/3] Membuka Browser dan Menjalankan Web Server...
start http://localhost:8000

echo.
echo [SERVER AKTIF] Aplikasi sedang berjalan. 
echo Jangan tutup jendela ini selama penggunaan!
echo.

:: Kita kembali menggunakan PHP untuk server web karena terbukti lancar di laptopmu
php -S localhost:8000

pause