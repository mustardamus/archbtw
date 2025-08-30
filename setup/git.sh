#!/usr/bin/env bash

# version control
sudo pacman -S --noconfirm git

# git tui tool
sudo pacman -S --noconfirm lazygit

read -p "Git Name: " git_name
read -p "Git E-Mail: " git_email

echo $git_username
echo $git_email

git config --global user.name "$git_name"
git config --global user.email "$git_email"
git config --global init.defaultBranch main
git config --global core.editor "helix"
