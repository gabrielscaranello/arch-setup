#! /bin/bash

PWD=$(pwd)

echo "Copying plasma config..."

rsync -a "$PWD/plasma/config/" "$HOME/.config/"
rsync -a "$PWD/plasma/local/" "$HOME/.local/"

echo "Replace start icon"
ICON_PATH="$HOME/.icons/start-here.svg"
sed -i "s|:start-here-icon:|$ICON_PATH|g" "$HOME/.config/plasma-org.kde.plasma.desktop-appletsrc"

echo "Plasma config copied."
