#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"$PWD/nvidia-packages")

echo "Configuring NVIDIA drivers..."

echo "Installing driver packages"
sudo pacman -Suy --noconfirm
echo "$PACKAGES" | xargs sudo pacman -Sy --noconfirm

echo "Enabling services..."
sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-persistenced.service
sudo systemctl enable nvidia-powerd.service
sudo systemctl enable nvidia-resume.service
sudo systemctl enable nvidia-suspend-then-hibernate.service

echo "NVIDIA drivers configured."
