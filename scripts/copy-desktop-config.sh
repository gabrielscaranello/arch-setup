#! /bin/bash

PWD=$(pwd)
echo "Copying desktop config..."

echo "Copying..."
cp "$PWD"/config/mimeapps.list ~/.config/mimeapps.list
sudo cp "$PWD"/config/mimeapps.list /root/.config/mimeapps.list

echo "Defing SYSTEMD_EDITOR"

if grep -q "^SYSTEMD_EDITOR=" /etc/environment; then
    sudo sed -i 's|^SYSTEMD_EDITOR=.*|SYSTEMD_EDITOR=nvim|' /etc/environment
else
    echo "SYSTEMD_EDITOR=nvim" | sudo tee -a /etc/environment > /dev/null
fi

echo "Desktop config setup done."
