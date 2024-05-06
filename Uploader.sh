#!/bin/bash

# Konfigurasi Telegram
BOT_TOKEN="6868662734:AAE2WyTGytSFbfV0jjDnP_hmtXh4RMZ59Yw"
CHAT_ID="-1002042015183

# Isi pesan
TEXT="Link : https://github.com/KernelBuilding/RecoveryTree_RMX3063"

# Tombol
BUTTON="download"

# Markup
MARKUP='{"inline_keyboard": [[{"text": "'"$BUTTON"'", "url": "https://github.com/KernelBuilding/RecoveryTree_RMX3063"}]], "resize_keyboard": true}'

# Foto
IMAGE="banner.png"

# Kirim pesan
curl -s \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{"chat_id":"'$CHAT_ID'", "text":"'$TEXT'", "reply_markup":'$MARKUP',"photo":"https://telegra.ph/file/bb7ac0ba4dea64f11318e.png"}' \
  "https://api.telegram.org/bot$BOT_TOKEN/sendPhoto"
