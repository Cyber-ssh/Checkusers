#!/bin/bash

vermelho="\e[31m"
verde="\e[32m"
amarelo="\e[33m"
amarelo="\e[34m"
roxo="\e[38;2;128;0;128m"
reset="\e[0m"

echo -e "${amarelo}|================================================|${reset}"
echo -e "${amarelo}|${reset}        ${roxo}Seja bem-vindo ao cybercoari${reset}        ${amarelo}|${reset}"
echo -e "${amarelo}|================================================|${reset}"
echo -e "${amarelo}|${reset}${roxo}Aplicativos Suportados:${reset}                         ${amarelo}|${reset}"
echo -e "${amarelo}|================================================|${reset}"
echo -e "${amarelo}|${reset}${amarelo}DTunnel${reset}                                         ${amarelo}|${reset}"
echo -e "${amarelo}|${reset}${amarelo}DTunnel Mod${reset}                                     ${amarelo}|${reset}"
echo -e "${amarelo}|${reset}${amarelo}Conecta4G${reset}                                       ${amarelo}|${reset}"
echo -e "${amarelo}|${reset}${amarelo}GLTunnel Mod${reset}                                    ${amarelo}|${reset}"
echo -e "${amarelo}|${reset}${amarelo}AnyVpn Mod (em testes)${reset}                          ${amarelo}|${reset}"
echo -e "${amarelo}|================================================|${reset}"

echo -e "${amarelo}==>${reset}${amarelo}Instalar:${reset} ${amarelo}1${reset}"
echo -e "${amarelo}==>${reset}${amarelo}Desinstalar:${reset} ${amarelo}2${reset}"
echo -e "${amarelo}==>${reset}${amarelo}Cancelar:${reset} ${amarelo}0${reset}"

read escolha

if [ "$escolha" -eq 1 ]; then
    sudo apt update && sudo apt upgrade && sudo apt install python3 python3-pip && pip install sqlite3 hypercorn colorlog fastapi pydantic
    echo "installed" > CheckUserInfo.txt

    git clone https://github.com/Cyber-ssh/CheckUser.git
    echo 'alias CheckUser="nohup python3 /root/CheckUser/menu.py"' >> ~/.bashrc

    echo -e "${roxo}Para iniciar, acesse o menu digitando 'CheckUser' (sem aspas)."
elif [ "$escolha" -eq 2 ]; then
    rm checkuserUlekInfo.txt
    rm -rf CheckUser
elif [ "$escolha" -eq 0 ]; then
    exit 0
else
    echo "Opção inválida. Por favor, digite 1 para instalar, 2 para desinstalar ou 0 para cancelar."
fi
