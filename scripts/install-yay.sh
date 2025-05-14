#! /bin/bash

PWD=$(pwd)

echo "Installing yay..."

echo "Installing pacman dependencies..."
pacman -S --needed base-devel --noconfirm

echo "Configuring yay..."
git clone https://aur.archlinux.org/yay.git /tmp/yay

echo "Installing yay..."
cd /tmp/yay && makepkg -si
cd "$PWD" || exit

echo "yay installed."
