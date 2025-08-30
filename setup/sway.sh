#!/usr/bin/env bash

# bar for wayland
if ! command -v waybar &> /dev/null; then
  sudo pacman -S --noconfirm waybar
fi

# set gtk theme and icons, cursor
if ! command -v nwg-look &> /dev/null; then
  sudo pacman -S --noconfirm nwg-look
fi

# nice flat icons
if ! command -v papirus-icon-theme &> /dev/null; then
  sudo pacman -S --noconfirm papirus-icon-theme
fi

# wayland notification daemon
if ! command -v mako &> /dev/null; then
  sudo pacman -S --noconfirm mako
fi

# application launcher
if ! command -v fuzzel &> /dev/null; then
  sudo pacman -S --noconfirm fuzzel
fi

# monospace font with icons
if ! command -v ttf-inconsolata-nerd &> /dev/null; then
  sudo pacman -S --noconfirm ttf-inconsolata-nerd
fi

# sans/serif font with icons
if ! command -v ttf-noto-nerd &> /dev/null; then
  sudo pacman -S --noconfirm ttf-noto-nerd
fi

# better tiling behaviour
if ! command -v autotiling  &> /dev/null; then
  sudo pacman -S --noconfirm autotiling 
fi
