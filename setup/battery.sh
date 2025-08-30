#!/usr/bin/env bash

# read battery, temperature, etc
sudo pacman -S --needed --noconfirm acpi

# protect from kernel vulnerabilities
sudo pacman -S --needed --noconfirm amd-ucode

# battery optimizing tool
sudo pacman -S --needed --noconfirm tlp

echo "Enable tlp on startup..."
sudo systemctl start tlp
sudo systemctl enable tlp

