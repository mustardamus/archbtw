#!/usr/bin/env bash

# kernel module for multiple screens
yay -S --needed --noconfirm evdi-dkms

# driver for displaylink devices
yay -S --needed --noconfirm displaylink

echo "Enable kernel module..."
sudo modprobe evdi

echo "Starting DisplayLink service..."
sudo systemctl start displaylink
sudo systemctl enable displaylink
