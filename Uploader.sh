#!/bin/bash

# Konfigurasi Telegram
BOT_TOKEN="6868662734:AAE2WyTGytSFbfV0jjDnP_hmtXh4RMZ59Yw"
CHAT_ID="-1002042015183"

# Variabel pesan
MESSAGE="SkyHawk Recovery Reborn\n\nBuild Date : 06\/05\/2024\nBuild By : @ProjectKernel2\n\n🔹 [download](https://github.com/KernelBuilding/RecoveryTree_RMX3063)\n🔹 screenshot\n\nChangelog :\n• Initial Recovery Build\n\nBug :\n• Cannot Decrypt Data With Lockscreen Pass\n\nSpesial Thanks :\n• @Ipank_0p For Testing\n• @RanYakhsza\n\n\#shrp \#unofficial \#recovery \#RMX3063"
IMAGE_PATH="banner.png"
BUTTON_TEXT="Download"
REPLY_MARKUP="{"inline_keyboard": [[{"text": "$BUTTON_TEXT", "url": "https://github.com/KernelBuilding/RecoveryTree_RMX3063"}]]}"

# KIRIM PESAN DENGAN FOTO DAN TOMBOL
curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendPhoto" \
-F chat_id="$CHAT_ID" \
-F photo="@$IMAGE_PATH" \
-F caption="$MESSAGE" \
-F reply_markup="$REPLY_MARKUP" \
-F parse_mode="MarkdownV2"
