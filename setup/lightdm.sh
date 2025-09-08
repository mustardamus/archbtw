#!/usr/bin/env bash

# Default window manager session (can be "i3" or "sway")
DEFAULT_SESSION="sway"

if grep -q "#autologin-user" /etc/lightdm/lightdm.conf; then
	echo "Setup autologin for lightdm for user $USER..."
	sudo sed -i "s/^#autologin-user=/autologin-user=$USER/" /etc/lightdm/lightdm.conf
	sudo sed -i "s/^#autologin-guest=/autologin-guest=false/" /etc/lightdm/lightdm.conf
	sudo sed -i "s/^#autologin-user-timeout=/autologin-user-timeout=0/" /etc/lightdm/lightdm.conf
	sudo groupadd -r autologin
	sudo gpasswd -a $USER autologin
fi

echo "Setting $DEFAULT_SESSION as default session for LightDM"
sudo sed -i "s/^#user-session=.*/user-session=$DEFAULT_SESSION/" /etc/lightdm/lightdm.conf
# If the line doesn't exist at all, add it under [Seat:*]
if ! grep -q "^user-session=" /etc/lightdm/lightdm.conf; then
	sudo sed -i "/^\[Seat:\*\]/a user-session=$DEFAULT_SESSION" /etc/lightdm/lightdm.conf
fi
