#!/bin/bash

# Konfigurasi Telegram
BOT_TOKEN="6868662734:AAE2WyTGytSFbfV0jjDnP_hmtXh4RMZ59Yw"
CHAT_ID="-1002042015183

# Variabel untuk teks dan foto
TEXT="Pesan teks yang ingin dikirim"
IMAGE_PATH="banner.png"

# Buat URL untuk mengirim teks dan foto
URL="https://api.telegram.org/bot${BOT_TOKEN}/sendMessage"
URL_PHOTO="https://api.telegram.org/bot${BOT_TOKEN}/sendPhoto"

# Kirim pesan teks
curl -s -X POST $URL \
  -H "Content-Type: application/json" \
  -d "{\"chat_id\": ${CHAT_ID}, \"text\": \"${TEXT}\"}"

# Kirim foto dengan caption
curl -s -X POST $URL_PHOTO \
  -H "Content-Type: multipart/form-data" \
  -F "chat_id=${CHAT_ID}" \
  -F "caption=${TEXT}" \
  -F "photo=@${IMAGE_PATH}"

# Kirim tombol link
curl -s -X POST $URL \
  -H "Content-Type: application/json" \
  -d "{\"chat_id\": ${CHAT_ID}, \"text\": \"${TEXT}\", \"reply_markup\": { \"keyboard\": [[{\"download\": \"Link\", \"url\": \"https://github.com/KernelBuilding/RecoveryTree_RMX3063\"}]], \"resize_keyboard\": true}}}"
