#!/usr/bin/env bash

# terminal editor
sudo pacman -S --needed --noconfirm helix

# toml lsp
sudo pacman -S --needed --noconfirm taplo-cli

# shell code formatter
sudo pacman -S --needed --noconfirm shfmt

# yml lsp
sudo pacman -S --needed --noconfirm yaml-language-server

# js/ts, custom code formatter
sudo pacman -S --needed --noconfirm prettier

# tailwindcss lsp
sudo pacman -S --needed --noconfirm tailwindcss-language-server

# js/ts language server
sudo pacman -S --needed --noconfirm typescript-language-server

# language server fo golang
sudo pacman -S --needed --noconfirm gopls

# linter for ansible code
sudo pacman -S --needed --noconfirm ansible-lint

# linter for yml code
sudo pacman -S --needed --noconfirm yamllint

# markdown formatter
sudo pacman -S --needed --noconfirm mdformat

# linter fo go programs
sudo pacman -S --needed --noconfirm golangci-lint

# next gen js/ts formatter, linter
sudo pacman -S --needed --noconfirm biome

# text and snippet autocompletion for helix
yay -S --needed --noconfirm simple-completion-language-server

# lsp for html, css, json
yay -S --needed --noconfirm vscode-langservers-extracted

# lsp for Dockerfile
yay -S --needed --noconfirm dockerfile-language-server

# compose.yml lsp
yay -S --needed --noconfirm nodejs-compose-language-service

# linting for golang
yay -S --needed --noconfirm golangci-lint-langserver-bin

# lsp for the astro web framework
yay -S --needed --noconfirm astrojs-language-server

# language server for markdown files
yay -S --needed --noconfirm markdown-oxide

# postgres language server
yay -S --needed --noconfirm postgrestools-bin

# sql formatter
yay -S --needed --noconfirm sql-formatter
