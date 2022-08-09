#!/usr/bin/env bash

# remove Firefox snap
sudo snap remove firefox

# add PPA
sudo add-apt-repository ppa:mozillateam/ppa

# prioritize Firefox PPA package
echo '
Package: firefox*
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozillateam-ppa

sudo apt install firefox
