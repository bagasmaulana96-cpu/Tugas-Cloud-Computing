#!/bin/bash

# Pindah ke folder tempat script ini dijalankan
cd "$(dirname "$0")"

echo "========================================================"
echo "      Menjalankan Cloud Emulator (Firebase Lokal)       "
echo "========================================================"
echo ""

# 1. Mengecek ketersediaan Node.js
if ! command -v node &> /dev/null
then
    echo "[ERROR SYSTEM] Node.js tidak terdeteksi!"
    echo "Mohon pastikan Node.js sudah terinstal di Mac ini."
    exit 1
fi

# 2. Mengecek ketersediaan Java
if ! command -v java &> /dev/null
then
    echo "[ERROR SYSTEM] Java (JDK) tidak terdeteksi!"
    echo "Mohon pastikan Java JDK (Versi 21+) sudah terinstal di Mac ini."
    exit 1
fi

echo "[OK] Dependensi Sistem Terpenuhi."
echo ""
echo "Memulai Mesin Cloud Storage dan Database NoSQL..."

# 3. Menjalankan emulator di latar belakang (background process)
npx firebase emulators:start &
EMULATOR_PID=$!

# 4. Jeda waktu tunggu mesin siap
echo "Menunggu infrastruktur Cloud menyala (10 detik)..."
sleep 10

# 5. Buka browser otomatis (menggunakan perintah 'open' di Mac)
echo "Membuka antarmuka aplikasi SceneVault..."
open "http://127.0.0.1:8000"

# 6. Jalankan web server lokal. Jika server web dimatikan (Ctrl+C), matikan juga emulatornya
echo "[SERVER WEB BERJALAN] Tekan Ctrl+C untuk mematikan aplikasi."
npx http-server -p 8000

# Membersihkan proses emulator saat ditutup
kill $EMULATOR_PID