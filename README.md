cat << 'EOF' > README.md
# Tugas Besar UTS Sistem Operasi

Repositori ini dibuat untuk memenuhi Ujian Tengah Semester (UTS) mata kuliah Sistem Operasi. Proyek ini berisi kumpulan *shell script* otomatisasi proses *backup* direktori data, pengelolaan log, serta pintasan perintah terminal (*alias*).

## Identitas Mahasiswa
* **Nama:** Muhammad Kaffi Al Hasbi
* **NIM:** 09011282530092
* **Program Studi:** Sistem Komputer
* **Universitas:** Universitas Sriwijaya

---

## Struktur Direktori Repositori
```text
uts-so-09011282530092/
├── script/
│   ├── backup.sh
│   ├── backup_loop.sh
│   └── alias.sh
├── README.md
└── nim.txt
## Cara menjalankan sistem
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
