#! /bin/bash

echo "Enabling services..."

sudo systemctl enable bluetooth.service
sudo systemctl enable cronie
sudo systemctl enable cups
sudo systemctl enable docker
sudo systemctl enable power-profiles-daemon.service
sudo systemctl enable sddm

echo "Services enabled."
