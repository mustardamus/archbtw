#!/usr/bin/env bash

# tiling window manager
sudo pacman -S --needed --noconfirm i3-wm

# simple status bar
sudo pacman -S --needed --noconfirm i3status

# window compositor
sudo pacman -S --needed --noconfirm picom

# application launcher
sudo pacman -S --needed --noconfirm rofi

# screen lock
sudo pacman -S --needed --noconfirm xss-lock

# GTK theme daemon for proper theme loading
sudo pacman -S --needed --noconfirm xsettingsd

# optional: GUI tool for GTK theme configuration
# sudo pacman -S --needed --noconfirm lxappearance
