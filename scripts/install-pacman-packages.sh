#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"$PWD/pacman-packages")

echo "Installing pacman packages..."
sudo pacman -Suuy --noconfirm
echo "$PACKAGES" | xargs sudo pacman -Sy --noconfirm
echo "pacman packages installed."
