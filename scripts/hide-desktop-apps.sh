#! /bin/bash

APPS=(
	assistant
	avahi-discover
	bssh
	bvnc
	designer
	linguist
	lstopo
	nm-connection-editor
	qdbusviewer
	qv4l2
	qvidcap
)

echo "Hiding desktop apps..."

for app in "${APPS[@]}"; do
  location="/usr/share/applications/${app}.desktop"
  if [ -f "${location}" ]; then
    sudo sed -i "s/NoDisplay=\(true\|false\)//g" "${location}" >/dev/null
    echo "NoDisplay=true" | sudo tee -a "${location}" >/dev/null
  fi
done

echo "Desktop apps hidden."
