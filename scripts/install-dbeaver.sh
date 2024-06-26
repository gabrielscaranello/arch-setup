#! /bin/bash

FILE_NAME="dbeaver-ce-latest-stable.x86_64.rpm"
OUTPUT_FILE="/tmp/$FILE_NAME"
DOWNLOAD_URL="https://dbeaver.io/files/$FILE_NAME"

echo "Installing DBeaver..."

echo "Removing old files if exists..."
rm -rf "$OUTPUT_FILE"

echo "Downloading..."
wget -c "$DOWNLOAD_URL" -O "$OUTPUT_FILE"

echo "Installing..."
sudo dnf install -y "$OUTPUT_FILE"

echo "DBeaver installed..."
