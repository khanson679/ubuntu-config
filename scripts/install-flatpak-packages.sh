#!/usr/bin/env bash
pkg_file="../info/flatpak-packages.txt"
set -x
sudo apt install flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install $(cat pkg_file)
