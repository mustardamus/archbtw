#!/usr/bin/env bash

# lmm manager and chat
yay -S --needed --noconfirm lmstudio

# opencl driver
sudo pacman -S opencl-mesa clinfo --noconfirm

# gpu diagnostics
sudo pacman -S mesa-utils --noconfirm

echo "Configuring AMD GPU TearFree"
sudo cp ~/.config/20-amdgpu.conf /etc/X11/xorg.conf.d/20-amdgpu.conf
