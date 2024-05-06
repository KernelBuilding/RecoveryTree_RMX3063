
#!/bin/bash

# Edit the following variables with your own Telegram bot token and chat ID
BOT_TOKEN="6868662734:AAE2WyTGytSFbfV0jjDnP_hmtXh4RMZ59Yw"
CHAT_ID="-1002042015183"

# Get the image file path as the first argument
IMAGE_FILE="banner.png"

# Get the text message as the second argument
MESSAGE="SkyHawk Recovery Reborn

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

#shrp #unofficial #recovery #RMX3063"

# Get the button text as the third argument
BUTTON_TEXT="download"

# Get the button URL as the fourth argument
BUTTON_URL="https://github.com/KernelBuilding/RecoveryTree_RMX3063"

# Construct the Telegram API URL
API_URL="https://api.telegram.org/bot$BOT_TOKEN/sendPhoto"

# Construct the multipart form data
FORM_DATA=$(cat << EOF
--boundary
Content-Disposition: form-data; name="chat_id"

$CHAT_ID
--boundary
Content-Disposition: form-data; name="photo"; filename="$IMAGE_FILE"

$(cat "$IMAGE_FILE")
--boundary
Content-Disposition: form-data; name="caption"

$MESSAGE
--boundary
Content-Disposition: form-data; name="reply_markup"

{
  "inline_keyboard": [
    [
      {
        "text": "$BUTTON_TEXT",
        "url": "$BUTTON_URL"
      }
    ]
  ]
}
--boundary--
EOF
)

# Send the request using curl
curl -X POST -H "Content-Type: multipart/form-data; boundary=boundary" -d "$FORM_DATA" "$API_URL"
