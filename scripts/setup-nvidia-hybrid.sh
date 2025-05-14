#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"$PWD/nvidia-hybrid-packages")

bash "${PWD}/scripts/setup-nvidia.sh"

echo "Configuring NVIDIA hybrid drivers..."

echo "Installing driver packages"
yay --noconfirm
echo "$PACKAGES" | xargs yay -Sy --noconfirm

echo "Enabling services..."
sudo systemctl enable switcheroo-control.service

echo "Change to nvidia driver usign envycontrol..."
sudo envycontrol --dm sddm -s hybrid

echo "NVIDIA hybrid drivers configured."
