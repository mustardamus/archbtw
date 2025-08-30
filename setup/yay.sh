#!/usr/bin/env bash

echo "Installing yay AUR helper..."
sudo pacman -S --noconfirm --needed git base-devel

tmp_path=/tmp/yay
last_path="$(pwd)"

if [ -d "$tmp_path" ]; then
	rm -rf "$tmp_path"
fi

git clone https://aur.archlinux.org/yay.git "$tmp_path"
cd "$tmp_path"
makepkg -si
yay -Y --gendb
yay -Syu --devel
cd "$last_path"


