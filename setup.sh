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

read -p "[+] [Enter Token]⟶ " TOKEN
read -p "[+] [Enter ID]⟶ " ID

# Save the token and ID in separate files for later use
echo "$TOKEN" > .token.txt
echo "$ID" > .id.txt

# Check if index.html exists before trying to modify
if [ -f "index.html" ]; then
    sed -i "s/ENTER-YOUR-TOKEN/$TOKEN/" index.html
    sed -i "s/ENTER-YOUR-ID/$ID/" index.html
    echo -e "\n\e[1;32m[+] Token and ID have been updated in index.html"
else
    echo -e "\n\e[1;33m[!] index.html not found, skipping HTML edit..."
fi

echo -e "\e[1;32m[✓] Token and ID have been updated successfully!"
