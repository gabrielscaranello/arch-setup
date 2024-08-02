#! /bin/bash

SIZE=$(cat </proc/meminfo | awk '/MemTotal/ { printf("%.0f", ($2 / 1024 / 1024 / 2)) }')
MB_SIZE=$(echo "$SIZE" | awk '{ printf "%.0f", ($1 * 1024) }')

echo "Setting up swap..."

echo "Removing old files"
sudo swapoff --all
sudo rm -rf /swapfile
sudo sed -i '/^\/swapfile/d' /etc/fstab
sudo sed -i '/^zram-size/d' /etc/systemd/zram-generator.conf
sudo rm -rf /etc/sysctl.d/00-custom.conf

echo "Creating swapfile"
sudo fallocate -l ${SIZE}G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

echo "Updating zram-generator..."
echo "zram-size=max(ram/2, $MB_SIZE)" | sudo tee -a /etc/systemd/zram-generator.conf

echo "Update swappiness..."
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.d/00-custom.conf
echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.d/00-custom.conf

sudo swapon /swapfile

echo "Swap configured."
