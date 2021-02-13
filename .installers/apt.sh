#!/bin/sh

apt update

# Main tools
apt install mc
apt install vim
apt install docker
apt install wget

# R and python
apt install r-base
apt install librsvg2-bin
apt install pandoc
apt install python3

# Web development
apt install nodejs
apt install httpie

# fonts
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.001.zip
unzip JetBrainsMono-2.001.zip
mv JetBrainsMono-*.ttf /usr/share/fonts/
fc-cache -f -v

# remove outdated stuff
apt clean