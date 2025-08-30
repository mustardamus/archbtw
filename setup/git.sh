#!/usr/bin/env bash

read -p "Git Name: " git_name
read -p "Git E-Mail: " git_email

echo $git_username
echo $git_email

git config --global user.name "$git_name"
git config --global user.email "$git_email"
git config --global init.defaultBranch main
git config --global core.editor "helix"
