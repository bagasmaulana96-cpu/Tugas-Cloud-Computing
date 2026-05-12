# Tugas-Cloud-Computing

## Panduan Setup & Instalasi
Agar aplikasi dapat berjalan, PC/Laptop penguji wajib telah terinstal Node.js dan Java (JDK) Versi 21 atau lebih tinggi.

### Opsi 1: Menjalankan via Script Otomatis (Direkomendasikan)
* **Windows:** Buka folder proyek, lalu klik ganda (Double-Click) file `start-windows.bat`.
* **macOS:** Buka Terminal, arahkan ke folder proyek, dan jalankan perintah `sh start-mac.command`.

### Opsi 2: Panduan Setup Manual (Khusus Windows)
Jika script otomatis terblokir oleh sistem keamanan Windows, ikuti langkah rinci berikut:
1.  Buka File Explorer, arahkan ke dalam folder proyek `tugas-cloud-scenevault`.
2.  Klik pada bilah alamat (address bar) di bagian atas, ketik `cmd`, lalu tekan Enter. Ini akan membuka Command Prompt tepat di dalam folder tersebut.
3.  **Menyalakan Cloud Emulator:** Di dalam jendela CMD tersebut, ketik perintah berikut lalu tekan Enter: `npx firebase emulators:start` (Tunggu hingga muncul tulisan hijau "All emulators ready" dan biarkan jendela ini tetap terbuka).
4.  **Menyalakan Server Web:** Buka jendela CMD baru di folder proyek yang sama. Ketik perintah berikut dan tekan Enter: `php -S localhost:8000` (Jika PHP terinstal) ATAU `npx http-server -p 8000`.
5.  Buka browser (Chrome/Edge) dan akses alamat: `http://localhost:8000`.

### Opsi 3: Panduan Setup Manual (Khusus macOS / Linux)
Jika menggunakan Mac/Linux dan script otomatis tidak berjalan, gunakan langkah berikut:
1.  Buka aplikasi Terminal.
2.  Arahkan direktori ke folder proyek dengan menggunakan perintah `cd`. Contoh: `cd ~/Downloads/tugas-cloud-scenevault`.
3.  **Menyalakan Cloud Emulator:** Ketik perintah berikut dan tekan Return: `npx firebase emulators:start` (Biarkan tab Terminal ini tetap terbuka menyala).
4.  **Menyalakan Server Web:** Buka tab Terminal baru (Cmd + T), pastikan posisinya masih di folder yang sama. Karena macOS versi terbaru tidak memiliki PHP bawaan, jalankan server menggunakan Node.js dengan perintah: `npx http-server -p 8000`.
5.  Buka browser (Safari/Chrome) dan akses alamat: `http://localhost:8000`.

---

## Manual Penggunaan Aplikasi

### A. Navigasi Beranda & Mengunggah Arsip
1.  Saat aplikasi dibuka di browser, halaman beranda akan muncul. Klik tombol "Masuk ke Ruang Arsip →" untuk mengakses aplikasi utama.
2.  Pada halaman Uploader, masukkan judul scene pada kolom teks pertama.
3.  Ketikkan teks narrative outline atau spesifikasi teknis prompt AI pada kotak teks deskripsi.
4.  Klik tombol "Choose File" untuk mengunggah gambar referensi (storyboard / desain karakter) berekstensi .png atau .jpg
