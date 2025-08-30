#!/usr/bin/env bash
#
# sudo ufw app list
# sudo ufw app info Transmission

sudo pacman -S --needed --noconfirm ufw
sudo ufw enable
sudo systemctl enable ufw

# open torrenting
sudo ufw allow 6881:6889/tcp
sudo ufw allow 6881:6889/udp
sudo ufw allow Transmission

