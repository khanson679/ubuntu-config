#!/usr/bin/env bash
pkg_file="../info/distro-packages.txt"
set -x
sudo apt install --no-install-recommends $(cat $packages)
