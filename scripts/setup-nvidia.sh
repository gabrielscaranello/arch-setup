#! /bin/bash

PWD=$(pwd)
PACKAGES=$(cat "$PWD/nvidia-packages" | tr '\n' ' ')

echo "Configuring NVIDIA drivers..."

echo "Installing driver packages"
sudo pacman -Suy --noconfirm && sudo pacman -S --noconfirm $PACKAGES

echo "Enabling services..."
sudo systemctl enable nvidia-hibernate.service
sudo systemctl enable nvidia-powerd.service
sudo systemctl enable nvidia-resume.service

echo "NVIDIA drivers configured."
