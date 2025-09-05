#! /bin/bash

PWD=$(pwd)

echo "Copying plasma config..."

rsync -a "$PWD/plasma/config/" "$HOME/.config/"

echo "Plasma config copied."
