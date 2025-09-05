#! /bin/bash

PWD=$(pwd)
THEME="${PWD}/sddm/theme.conf.user"
SETTINGS="${PWD}/sddm/kde_settings.conf"
THEME_TARGET=/usr/share/sddm/themes/breeze/theme.conf.user
SETTINGS_TARGET=/etc/sddm.conf.d/kde_settings.conf

echo "Copying SDDM config..."
sudo cp "$THEME" "$THEME_TARGET"
sudo cp "$SETTINGS" "$SETTINGS_TARGET"

echo "SDDM config setup done."
