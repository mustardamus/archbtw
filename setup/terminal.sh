#!/usr/bin/env bash

# terminal emulator
sudo pacman -S --needed --noconfirm foot

# user shell, fish plugin manager
sudo pacman -S --needed --noconfirm fish fisher

# better cat
sudo pacman -S --needed --noconfirm bat

# better ls
sudo pacman -S --needed --noconfirm eza

echo "Installing fish plugins..."
fish -c "fisher install jorgebucaran/hydro"     # prompt
fish -c "fisher install laughedelic/pisces"     # autoclose "" ()
fish -c "fisher install danhper/fish-ssh-agent" # ssh agent

