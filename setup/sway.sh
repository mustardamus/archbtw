#!/usr/bin/env bash

# bar for wayland
sudo pacman -S --needed --noconfirm waybar

# set gtk theme and icons, cursor
sudo pacman -S --needed --noconfirm nwg-look

# nice flat icons
sudo pacman -S --needed --noconfirm papirus-icon-theme

# wayland notification daemon
sudo pacman -S --needed --noconfirm mako

# application launcher
sudo pacman -S --needed --noconfirm fuzzel

# monospace font with icons
sudo pacman -S --needed --noconfirm ttf-inconsolata-nerd

# sans/serif font with icons
sudo pacman -S --needed --noconfirm ttf-noto-nerd

# better tiling behaviour
sudo pacman -S --needed --noconfirm autotiling 

# dark flat theme
yay -S --needed --noconfirm qogir-gtk-theme

# dark flat qt kvantum theme style
yay -S --needed --noconfirm kvantum-theme-qogir-git

# manage clipboard from the command line
sudo pacman -S --needed --noconfirm xclip

# same as xlip, but for wayland
sudo pacman -S --needed --noconfirm wl-clipboard

