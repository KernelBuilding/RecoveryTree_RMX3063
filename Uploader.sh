#!/bin/bash

# Konfigurasi Telegram
BOT_TOKEN="6868662734:AAE2WyTGytSFbfV0jjDnP_hmtXh4RMZ59Yw"
CHAT_ID="-1002042015183"

# Pesan yang akan dikirim
MESSAGE=" test
[Link Download](https://github.com/KernelBuilding/RecoveryTree_RMX3063)"

# Tombol pada pesan
INLINE_KEYBOARD='[{"text": "Unduh", "url": "https://github.com/KernelBuilding/RecoveryTree_RMX3063"}]'

# Banner
BANNER_PATH="banner.png"

# Fungsi untuk mengirim pesan dengan tombol
send_message_with_button() {
    curl -s -X POST \
        "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" \
        -d "chat_id=${CHAT_ID}" \
        -d "text=${MESSAGE}" \
        -d "reply_markup=${INLINE_KEYBOARD}"
}

# Fungsi untuk mengirim gambar
send_image() {
    curl -s -X POST \
        "https://api.telegram.org/bot${BOT_TOKEN}/sendPhoto" \
        -F "chat_id=${CHAT_ID}" \
        -F "photo=@${BANNER_PATH}"
}

# Kirim gambar banner
send_image

# Kirim pesan dengan tombol
send_message_with_button
