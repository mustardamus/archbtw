#!/usr/bin/env bash

# lmm manager and chat
yay -S --needed --noconfirm lmstudio

# opencl driver for stable diffusion
sudo pacman -S opencl-mesa clinfo --noconfirm
