#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

sudo apt update -y;
sudo apt upgrade -y;

echo -e "${GREEN}Installing vlc....${ENDCOLOR}"
sudo snap install vlc -y;
echo -e "${GREEN}vlc installed.${ENDCOLOR}"

echo -e "${GREEN}Installing git....${ENDCOLOR}"
sudo add-apt-repository ppa:git-core/ppa;
sudo apt install git -y;
echo -e "${GREEN}git installed.${ENDCOLOR}"


echo -e "${GREEN}Installing VSCode....${ENDCOLOR}"
sudo apt install software-properties-common apt-transport-https wget;
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main";
sudo apt install code -y;
echo -e "${GREEN}VSCode installed.${ENDCOLOR}"


echo -e "${GREEN}Installing Brave Browser....${ENDCOLOR}"
sudo apt install apt-transport-https curl -y;
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg;

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list;


sudo apt install brave-browser -y;

echo -e "${GREEN}Brave Browser installed.${ENDCOLOR}"

echo -e "${RED}Uninstalling firefox....${ENDCOLOR}"

sudo snap remove firefox -y;
sudo apt-get purge firefox -y;
sudo rm -rf .mozilla/firefox/;
sudo rm -rf .macromedia/;
sudo rm -rf /etc/firefox/;
sudo rm -rf /usr/lib/firefox/;
sudo rm -rf /usr/lib/firefox-addons/;

echo -e "${RED}firefox removed.${ENDCOLOR}"


echo -e "${GREEN}Installing nodejs.${ENDCOLOR}"
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs;


echo -e "${GREEN}Installing npm.${ENDCOLOR}"
sudo npm -g i npm;

echo -e "${GREEN}all execution completed${ENDCOLOR}"

sudo apt-get autoclean -y;
read abc
