#!/usr/bin/env bash

# terminal emulator
if ! command -v foot &> /dev/null; then
  sudo pacman -S --noconfirm foot
fi

# user shell, fish plugin manager
if ! command -v fish &> /dev/null; then
  sudo pacman -S --noconfirm fish fisher
fi

# better cat
if ! command -v bat &> /dev/null; then
  sudo pacman -S --noconfirm bat
fi

# better ls
if ! command -v eza &> /dev/null; then
  sudo pacman -S --noconfirm eza
fi

echo "Installing fish plugins..."
fish -c "fisher install jorgebucaran/hydro"     # prompt
fish -c "fisher install laughedelic/pisces"     # autoclose "" ()
fish -c "fisher install danhper/fish-ssh-agent" # ssh agent

