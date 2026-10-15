#!/bin/bash

# =======================================================
# Tugas Besar UTS Sistem Operasi
# Nama : Muhammad Kaffi Al Hasbi
# NIM  : 09011282530092
# File : alias.sh
# =======================================================

# Menentukan path lengkap repositori
REPO_DIR="$HOME/uts-so-09011282530092"

# Alias untuk menjalankan backup 1x
alias run-backup="bash $REPO_DIR/script/backup.sh"

# Alias untuk menjalankan backup_loop di background
alias start-backup-loop="nohup bash $REPO_DIR/script/backup_loop.sh > /dev/null 2>&1 & echo 'Backup loop berjalan di background.'"

# Alias untuk melihat log backup
alias view-backup-log="cat $HOME/backup_09011282530092.log"

echo "Alias berhasil dimuat! Perintah yang tersedia:"
echo "  run-backup        : Jalankan backup sekali"
echo "  start-backup-loop : Jalankan backup berulang di background"
echo "  view-backup-log   : Lihat isi file log backup"
# Versi: 1.0 - UTS Sistem Operasi
