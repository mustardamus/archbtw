#!/usr/bin/env bash

# read battery, temperature, etc
sudo pacman -S --needed --noconfirm acpi

# protect from kernel vulnerabilities
sudo pacman -S --needed --noconfirm amd-ucode

# cpu speed and power optimizer for more battery life
yay -S --needed --noconfirm auto-cpufreq-git

echo "Enable auto-cpufreq on startup..."
sudo systemctl enable auto-cpufreq

