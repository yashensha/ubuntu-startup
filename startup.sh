#!/bin/bash

echo "Installing vlc...."
sudo snap install vlc;
echo "vlc installed."
echo "Installing git...."
sudo add-apt-repository ppa:git-core/ppa;
sudo apt update;
sudo apt install git;
echo "git installed."


echo "Installing vs-code....."
sudo apt update;
sudo apt upgrade -y;
sudo apt install software-properties-common apt-transport-https wget;
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main";
sudo apt install code;

sudo apt update && sudo apt upgrade -y;
echo "vs-code installed."

echo "Installing brave-browser...."

sudo apt install apt-transport-https curl;
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg;

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list;

sudo apt update;

sudo apt install brave-browser;

echo "brave-browser installed."

echo "Uninstalling firefox...."

sudo snap remove firefox;
sudo apt-get purge firefox;
sudo rm -rf .mozilla/firefox/;
sudo rm -rf .macromedia/;
sudo rm -rf /etc/firefox/;
sudo rm -rf /usr/lib/firefox/;
sudo rm -rf /usr/lib/firefox-addons/;

echo "firefox removed."


echo "Installing nodejs."
sudo apt install nodejs;
echo "Installing npm."
sudo apt install npm;