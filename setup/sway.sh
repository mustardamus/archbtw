#!/usr/bin/env bash

# bar for wayland
sudo pacman -S --noconfirm waybar

# set gtk theme and icons, cursor
sudo pacman -S --noconfirm nwg-look

# nice flat icons
sudo pacman -S --noconfirm papirus-icon-theme

# wayland notification daemon
sudo pacman -S --noconfirm mako

# application launcher
sudo pacman -S --noconfirm fuzzel

# monospace font with icons
sudo pacman -S --noconfirm ttf-inconsolata-nerd

# sans/serif font with icons
sudo pacman -S --noconfirm ttf-noto-nerd

# better tiling behaviour
sudo pacman -S --noconfirm autotiling 

# dark flat theme
yay -S --noconfirm qogir-gtk-theme

# dark flat qt kvantum theme style
yay -S --noconfirm kvantum-theme-qogir-git
