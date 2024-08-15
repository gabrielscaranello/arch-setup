#! /bin/bash

echo "Setting up Icon Theme..."

echo "Defining Icon Theme..."
papirus-folders -C cat-mocha-blue
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"

echo "Icon Theme setup done."
