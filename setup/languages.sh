#!/usr/bin/env bash

# screenshot and annotation tool
sudo pacman -S --needed --noconfirm mise usage

# mise ls-remote NAME
mise use --global node@22
mise use --global deno@2.4
mise use --global bun@1.2
mise use --global go@1.25
mise use --global rust@stable
mise use --global python@3.13
mise use --global pipx@1.7
mise use --global ansible@11


