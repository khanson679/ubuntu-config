#!/usr/bin/env bash
sudo dpkg --add-architecture i386
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
echo 'deb https://dl.winehq.org/wine-builds/ubuntu/ impish main' | sudo tee /etc/apt/sources.list.d/winehq.list
sudo apt update
sudo apt install --install-recommends winehq-stable
