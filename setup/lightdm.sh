#!/usr/bin/env bash

if grep -q "#autologin-user" /etc/lightdm/lightdm.conf; then
	echo "Setup autologin for lightdm for user $USER..."
	sudo sed -i "s/^#autologin-user=/autologin-user=$USER/" /etc/lightdm/lightdm.conf
	sudo sed -i "s/^#autologin-guest=/autologin-guest=false/" /etc/lightdm/lightdm.conf
	sudo sed -i "s/^#autologin-user-timeout=/autologin-user-timeout=0/" /etc/lightdm/lightdm.conf
	sudo groupadd -r autologin
	sudo gpasswd -a $USER autologin
fi

