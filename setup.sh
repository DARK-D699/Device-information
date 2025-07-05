#!/bin/bash

clear
echo -e "\e[1;32m"
echo "   Hey Dear"
echo "       (\u0e51_\u0e51)"
echo "     <)    )╯ I'm DARK-D"
echo "     /     \\   - * - @ - * -"
echo
echo -e "\e[1;36m[+] Please Enter Your Telegram Bot token"
echo "[+] And Your Chat ID"
echo

# Input Token and Chat ID
read -p "[+] [Enter Token]⟶ " TOKEN
read -p "[+] [Enter ID]⟶ " ID

# Save to hidden files
echo "$TOKEN" > .token.txt
echo "$ID" > .id.txt

# Attempt to update index.html (optional)
if [ -f "index.html" ]; then
    sed -i "s/ENTER-YOUR-TOKEN/$TOKEN/" index.html
    sed -i "s/ENTER-YOUR-ID/$ID/" index.html
    echo -e "\n\e[1;32m[+] Token and ID have been updated in index.html"
else
    echo -e "\n\e[1;33m[!] index.html not found, skipping HTML edit..."
fi

# Auto-send test message to Telegram bot
echo -e "\e[1;36m[+] Sending test message to your Telegram bot..."

RESPONSE=$(curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" \
     -d chat_id="$ID" \
     -d text="✅ Hello from DARK-D setup! Your bot is connected successfully." \
     -d parse_mode="HTML")

if [[ $RESPONSE == *'"ok":true'* ]]; then
    echo -e "\e[1;32m[✓] Test message sent successfully!"
else
    echo -e "\e[1;31m[✘] Failed to send test message. Please check your token or chat ID."
fi
