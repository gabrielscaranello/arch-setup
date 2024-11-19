#! /bin/bash

PWD=$(pwd)
PACKAGES=$(cat "$PWD/nvidia-hybrid-packages" | tr '\n' ' ')

bash $PWD/scripts/setup-nvidia.sh

echo "Configuring NVIDIA hybrid drivers..."

echo "Installing driver packages"
yay --noconfirm && yay -Sy --noconfirm $PACKAGES

echo "Enabling services..."
sudo systemctl enable switcheroo-control.service

echo "Change to nvidia driver usign envycontrol..."
sudo envycontrol --dm sddm -s hybrid

echo "NVIDIA hybrid drivers configured."
