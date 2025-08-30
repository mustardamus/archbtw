#!/usr/bin/env bash

# file manager
sudo pacman -S --noconfirm thunar

# for automatically mounting external drives
sudo pacman -S --noconfirm gvfs

# file transfer for phones
sudo pacman -S --noconfirm gvfs-mtp

# archive manager
sudo pacman -S --noconfirm file-roller

# filesystem interface for userspace
sudo pacman -S --noconfirm fuse2

# mount remote directories
sudo pacman -S --noconfirm sshfs
