#!/usr/bin/env bash

if ! command -v ttf-inconsolata-nerd &> /dev/null; then
  sudo pacman -S --noconfirm ttf-inconsolata-nerd
fi

if ! command -v ttf-noto-nerd &> /dev/null; then
  sudo pacman -S --noconfirm ttf-noto-nerd
fi
