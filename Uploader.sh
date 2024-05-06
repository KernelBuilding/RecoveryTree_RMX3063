#!/bin/bash

# Konfigurasi Telegram
BOT_TOKEN="6868662734:AAE2WyTGytSFbfV0jjDnP_hmtXh4RMZ59Yw"
CHAT_ID="-1002042015183"

# Variabel pesan
MESSAGE="
SkyHawk Recovery Reborn

Build Date : 06/05/2024
Build By : @ProjectKernel2

🔹 download
🔹 screenshot

Changelog :
• Initial Recovery Build

Bug :
• Cannot Decrypt Data With Lockscreen Pass

Spesial Thanks :
• @Ipank_0p For Testing
• @RanYakhsza 

#shrp #unofficial #recovery #RMX3063
"
IMAGE_PATH="banner.png"
BUTTON_TEXT="Download"
REPLY_MARKUP="{"inline_keyboard": [[{"text": "$BUTTON_TEXT", "url": "https://github.com/KernelBuilding/RecoveryTree_RMX3063/releases/download/$GITHUB_RUN_ID/recovery.img"}]]}"

# KIRIM PESAN DENGAN FOTO DAN TOMBOL
curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendPhoto" 
-F chat_id="$CHAT_ID" 
-F photo="@$IMAGE_PATH" 
-F caption="$MESSAGE" 
-F reply_markup="$REPLY_MARKUP"
