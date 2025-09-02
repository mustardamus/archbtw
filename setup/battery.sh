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

echo "Setting swappiness..."
echo "vm.swappiness=10" | sudo tee /etc/sysctl.d/99-swappiness.conf

echo "Enable fstrim..."
sudo systemctl enable --now fstrim.timer

# cpu thermal monitor
sudo pacman -S thermald
sudo systemctl enable --now thermald.service

# multi core optimization
sudo pacman -S irqbalance
sudo systemctl enable --now irqbalance.service
