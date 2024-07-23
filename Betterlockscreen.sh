#!/usr/bin/env bash

# i3lock-color installation
sudo apt install -y autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util0-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev

cd ~/Downloads
git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
chmod +x build.sh
chmod +x install-i3lock-color.sh
# Build without installing
#./build.sh
# Build AND install
./install-i3lock-color.sh

cd ..
rm -rf i3lock-color

cd ~

#sudo apt install -y imagemagick 
sudo apt install -y bc
# Optional packages
#sudo apt install -y dunst feh

# Betterlockscreen Installation(Systemwide)
wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | sudo bash -s system

# Betterlockscreen Installation(for current user)
#wget https://raw.githubusercontent.com/betterlockscreen/betterlockscreen/main/install.sh -O - -q | bash -s user
