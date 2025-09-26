#! /bin/bash

PWD=$(pwd)
CONFIG_FILE="$PWD/config/timeshift.json"
TARGET_FILE="/etc/timeshift/timeshift.json"
GRUB_BTRFSD_CONFIG=$(systemctl show -p FragmentPath grub-btrfsd.service | cut -d= -f2)

echo "Copying timeshift config..."

echo "Removing old files if exists..."
sudo rm -rf $TARGET_FILE

echo "Creating timeshift config..."
sudo cp "$CONFIG_FILE" "$TARGET_FILE"

echo "Fixing grub-btrfsd"
if [[ -f "$GRUB_BTRFSD_CONFIG" ]]; then
  sudo sed -i 's|^ExecStart=/usr/bin/grub-btrfsd /.snapshots --syslog|ExecStart=/usr/bin/grub-btrfsd --syslog --timeshift-auto|' "$GRUB_BTRFSD_CONFIG"
  sudo systemctl stop grub-btrfsd.service
  sudo systemctl enable --now grub-btrfsd.service
  echo "btrfsd service fixed."
else
  echo "btrfsd service not found. Please fix manually."
fi


echo "Timeshift config setup done."
