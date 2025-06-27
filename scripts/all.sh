#! /bin/bash

set -e

PWD=$(pwd)

echo "Installing all setup..."

bash "${PWD}/scripts/install-pacman-packages.sh"
bash "${PWD}/scripts/install-yay.sh"
bash "${PWD}/scripts/install-aur-packages.sh"
bash "${PWD}/scripts/install-flatpak-packages.sh"
bash "${PWD}/scripts/install-nvm.sh"
bash "${PWD}/scripts/hide-desktop-apps.sh"
bash "${PWD}/scripts/setup-look.sh"
bash "${PWD}/scripts/copy-desktop-config.sh"
bash "${PWD}/scripts/copy-timeshift-config.sh"
bash "${PWD}/scripts/setup-swap.sh"
bash "${PWD}/scripts/usermod.sh"
bash "${PWD}/scripts/enable-services.sh"

echo "Installation is completed!"
