#! /bin/bash

echo "Enabling services..."

sudo systemctl enable bluetooth.service
sudo systemctl enable cronie
sudo systemctl enable cups
sudo systemctl enable docker
sudo systemctl enable fancontrol.service
sudo systemctl enable power-profiles-daemon.service
sudo systemctl enable sddm
sudo systemctl enable systemd-boot-update.service
sudo systemctl enable systemd-time-wait-sync.service
sudo systemctl enable thermald.service
sudo systemctl enable ufw.service

sudo ufw enable

echo "Services enabled."
