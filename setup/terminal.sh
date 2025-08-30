#!/usr/bin/env bash

if ! command -v foot &> /dev/null; then
  sudo pacman -S --noconfirm foot
fi

if ! command -v fish &> /dev/null; then
  sudo pacman -S --noconfirm fish fisher
fi

if ! command -v bat &> /dev/null; then
  sudo pacman -S --noconfirm bat
fi

if ! command -v eza &> /dev/null; then
  sudo pacman -S --noconfirm eza
fi

echo "Installing fish plugins..."
fish -c "fisher install jorgebucaran/hydro"
fish -c "fisher install laughedelic/pisces"
fish -c "fisher install danhper/fish-ssh-agent"

