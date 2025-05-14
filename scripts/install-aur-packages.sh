#! /bin/bash

PWD=$(pwd)
PACKAGES=$(tr '\n' ' ' <"$PWD/aur-packages")

echo "Installing yay packages..."
echo "$PACKAGES" | xargs yay -Sy --noconfirm
echo "yay packages installed."
