#!/bin/bash
vermelho="\e[31m"
verde="\e[32m"
amarelo="\e[33m"
azul="\e[34m"
roxo="\e[38;2;128;0;128m"
reset="\e[0m"

set -x
apt update && apt upgrade -y && apt install python3 git -y
git clone https://github.com/Cyber-ssh/Checkusers.git
chmod +x /root/CheckUser/checkuserMenu.sh
ln -s /root/CheckUser/checkuserMenu.sh /usr/local/bin/CheckUser

clear
echo "Para iniciar o menu digite: $amarelo CheckUser $reset"
