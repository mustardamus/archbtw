#!/usr/bin/env bash

# run containers
sudo pacman -S --needed --noconfirm docker

# run multiple containers
sudo pacman -S --needed --noconfirm docker-compose

# for building containers
sudo pacman -S --needed --noconfirm docker-buildx

# docker tui
yay -S --needed --noconfirm lazydocker

echo "Setup non-root Docker execution... (needs reboot)"
sudo gpasswd -a $USER docker

echo "Enable Docker on boot..."
sudo systemctl enable docker
