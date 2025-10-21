#! /bin/bash

NODE_VERSION=22
NPM_PACKAGES=$(tr '\n' ' ' <"$PWD/npm-packages")

echo "Installing NVM and Node..."

echo "Installing NVM..."
sudo pacman -Sy --noconfirm nvm

echo "Sourcing NVM"
source /usr/share/nvm/init-nvm.sh

echo "Installing Node ${NODE_VERSION}..."
nvm install "${NODE_VERSION}"

echo "Installing packages..."
echo "$NPM_PACKAGES" | xargs npm i -g 

echo "NVM and Node installed."
