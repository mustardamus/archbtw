#!/usr/bin/env bash

# man pages db
sudo pacman -S --needed --noconfirm man-db

# man pages reader
sudo pacman -S --needed --noconfirm man-pages

# dns tools like dig
sudo pacman -S --needed --noconfirm bind

# show mime types and set default apps
sudo pacman -S --needed --noconfirm perl-file-mimeinfo

# show exif informtation for an image
sudo pacman -S --needed --noconfirm perl-image-exiftool

# local and ssh file synchronization
sudo pacman -S --needed --noconfirm rsync

# fast, secure backup program
sudo pacman -S --needed --noconfirm restic

# image manipulation in the terminal
sudo pacman -S --needed --noconfirm imagemagick

# video and audio manipulation in the terminal
sudo pacman -S --needed --noconfirm ffmpeg

# terminal pager, used by git diff for example
sudo pacman -S --needed --noconfirm less

# update arch mirror list
sudo pacman -S --needed --noconfirm reflector

# better df
sudo pacman -S --needed --noconfirm dysk

# terminal pager, used by git diff for example
sudo pacman -S --needed --noconfirm less

# alternative to find
sudo pacman -S --needed --noconfirm fd

# find in file content
sudo pacman -S --needed --noconfirm ripgrep

# fuzzy find in lists
sudo pacman -S --needed --noconfirm fzf

# tldr client, community tldr man pages
sudo pacman -S --needed --noconfirm tealdeer

# compress and extract archives
sudo pacman -S --needed --noconfirm 7zip

# command line json query tool
sudo pacman -S --needed --noconfirm jq

# pdf rendering in the terminal
sudo pacman -S --needed --noconfirm poppler

# terminal multiplexer
sudo pacman -S --needed --noconfirm zellij

# static http file server
yay -S --needed --noconfirm nodejs-http-server

# render svg in the terminal
yay -S --needed --noconfirm resvg

# count lines of code
yay -S --needed --noconfirm sloc

# watch for file changes
yay -S --needed --noconfirm watchman-bin

# standalone tailwindcss cli
yay -S --needed --noconfirm tailwindcss-bin

# live reload go apps
yay -S --needed --noconfirm air

# Dockerfile linter
yay -S --needed --noconfirm hadolint
