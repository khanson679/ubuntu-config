#!/usr/bin/env bash

# remove snap packages
sudo snap remove firefox
sudo snap remove gnome-3-38-2004
sudo snap remove core20
sudo snap remove gtk-common-themes
sudo snap remove bare
sudo snap remove snapd

# remove snap
sudo apt purge snapd

# remove non-Latin fonts
sudo apt purge fonts-noto-ui-core fonts-indic fonts-thai-tlwg fonts-kacst fonts-kacst-one fonts-khmeros-core fonts-lao fonts-sil-abyssinica fonts-sil-padauk fonts-tibetan-machine fonts-lklug-sinhala && sudo apt autoremove
