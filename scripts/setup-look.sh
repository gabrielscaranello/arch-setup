#! /bin/bash

PWD=$(pwd)

echo "Setting up look..."
bash $PWD/scripts/install-bibata-cursor.sh
bash $PWD/scripts/install-gtk-theme.sh
bash $PWD/scripts/setup-icon-theme.sh
bash $PWD/scripts/setup-wallpaper.sh
echo "Look setup done."
