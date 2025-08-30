#!/usr/bin/env bash

# file manager
sudo pacman -S --needed --noconfirm thunar

# for automatically mounting external drives
sudo pacman -S --needed --noconfirm gvfs

# file transfer for phones
sudo pacman -S --needed --noconfirm gvfs-mtp

# archive manager
sudo pacman -S --needed --noconfirm file-roller

# filesystem interface for userspace
sudo pacman -S --needed --noconfirm fuse2

# mount remote directories
sudo pacman -S --needed --noconfirm sshfs
