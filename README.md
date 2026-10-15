cat << 'EOF' > README.md
# Tugas Besar UTS Sistem Operasi

Repositori ini dibuat untuk memenuhi Ujian Tengah Semester (UTS) mata kuliah Sistem Operasi. Proyek ini berisi kumpulan *shell script* otomatisasi proses *backup* direktori data, pengelolaan log, serta pintasan perintah terminal (*alias*).

## Identitas Mahasiswa
* **Nama:** Muhammad Kaffi Al Hasbi
* **NIM:** 09011282530092
* **Program Studi:** Sistem Komputer
* **Universitas:** Universitas Sriwijaya


## Struktur Direktori Repositori
```text
uts-so-09011282530092/
├── script/
│   ├── backup.sh
│   ├── backup_loop.sh
│   └── alias.sh
├── README.md
└── nim.txt
## Cara Menjalankan Sistem
```
Panduan pengoperasian skrip di dalam lingkungan Linux:

Memberikan Hak Akses Eksekusi (chmod)
Sebelum skrip dapat dijalankan oleh sistem, seluruh file skrip di dalam folder script/ harus diberi izin akses eksekusi:

Bash
cd script/
chmod +x backup.sh backup_loop.sh alias.sh
cd ..
Menjalankan Backup Manual
Untuk melakukan proses pengarsipan dan kompresi data secara instan sebanyak satu kali:

Bash
./script/backup.sh
Memuat Alias Terminal
Untuk mengaktifkan pintasan perintah terminal agar dapat digunakan di sesi aktif:

Bash
source script/alias.sh

## Bukti & Penjelasan Job Control (Background Execution)
Untuk menjalankan proses backup secara kontinu tanpa mengunci jendela terminal interaktif (foreground), proyek ini menerapkan konsep Job Control di Linux menggunakan utilitas nohup dan ampersand (&).

Perintah Menjalankan Proses di Latar Belakang:

Bash
nohup bash script/backup_loop.sh > /dev/null 2>&1 &
(Perintah nohup memastikan proses tetap berjalan meskipun terminal ditutup, dan & mengirim proses ke latar belakang. Output terminal akan menampilkan Process ID (PID), misalnya [1] 3452).

Cara Memantau Proses Aktif (jobs / ps aux):
Untuk memastikan proses looping backup sedang berjalan di latar belakang, digunakan perintah manajemen job:

Bash
jobs
Atau memantau proses sistem berdasarkan PID:

Bash
ps aux | grep backup_loop.sh
Cara Menghentikan Proses di Latar Belakang:
Jika proses perlu dihentikan, gunakan perintah kill diikuti dengan PID proses yang bersangkutan:

Bash
kill 3452

## Kendala dan Solusi
Dalam proses perancangan dan pengujian sistem operasi ini, beberapa kendala teknis berikut berhasil diidentifikasi dan diselesaikan:

Kendala 1: Perbedaan Path Direktori Home (/home/kalilinux vs /home/kaffi)

Kendala: Skrip mengalami galat (error) No such file or directory ketika dijalankan pada mesin virtual dengan nama pengguna yang berbeda.

Solusi: Mengganti seluruh path absolut statis dengan variabel lingkungan sistem $HOME agar direktori sumber, tujuan, dan log bersifat dinamis serta kompatibel di berbagai mesin Linux.

Kendala 2: Kesalahan Eksekusi Shell (PowerShell vs Bash)

Kendala: Perintah konfigurasi seperti source gagal dikenali ketika secara keliru dieksekusi di dalam terminal PowerShell Windows.

Solusi: Memastikan seluruh pengujian skrip dan sintaks Bash dijalankan di dalam lingkungan terminal Linux yang sesuai.

Kendala 3: Autentikasi Git & GitHub (git push ditolak)

Kendala: Penolakan password authentication oleh server GitHub saat melakukan sinkronisasi kode.

Solusi: Menggunakan Personal Access Token (PAT) yang valid dan mengintegrasikannya ke dalam URL remote repositori Git.
EOF

git add README.md
git commit -m "docs: finalize comprehensive README.md according to system operations requirements"
git push origin main



