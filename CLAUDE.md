# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is an Arch Linux system configuration repository for setting up a complete desktop environment with dotfiles and automation scripts. The setup supports both i3 (X11) and Sway (Wayland) window managers, with i3 currently set as the default due to DisplayLink monitor compatibility issues with Sway.

## System Architecture

### Dual Window Manager Setup
- **Primary**: i3 (X11) - Currently default due to external USB monitor (DisplayLink) compatibility
- **Secondary**: Sway (Wayland) - Preferred but crashes with DisplayLink monitors
- Switch between window managers by logging out (`Super+Shift+E`) and selecting different session

### Configuration Management
- **Dotfiles**: Managed via GNU Stow for symlink-based configuration
- **Package Management**: Uses `pacman` for official packages and `yay` for AUR packages
- **Shell**: Fish shell with custom functions and hydro prompt theme

## Key Commands

### System Setup
```bash
# Initial setup after cloning repository
bash setup.sh

# Install dotfiles (creates symlinks)
stow .

# Reload i3 configuration
Super+Shift+C  # (keybind)

# Monitor setup (manual trigger)
Super+Shift+M  # runs ~/.config/i3/monitor_setup.sh
```

### Development Tools Available
```bash
# Editor
hx file.txt          # Helix editor with LSP support

# File operations  
fd pattern           # Find files (better than find)
rg pattern          # Search in files (ripgrep)
fzf                 # Fuzzy finder

# Development
prettier file.js     # JavaScript/TypeScript formatter
biome check         # Next-gen JS/TS linter/formatter
shfmt script.sh     # Shell script formatter
golangci-lint run   # Go linter

# System tools
dysk                # Better df
watchman watch .    # File change watcher
http-server         # Serve current directory
restic backup       # Backup tool
```

## Configuration Structure

### Core Directories
- `.config/` - All application configurations
- `setup/` - Modular installation scripts for different components
- `notes/` - Documentation and setup notes

### Key Configuration Files
- `.config/i3/config` - i3 window manager configuration with custom keybinds
- `.config/sway/config` - Sway window manager configuration
- `.config/fish/config.fish` - Fish shell configuration and PATH setup
- `.config/helix/` - Text editor configuration with LSP settings
- `.config/i3/monitor_setup.sh` - Script for configuring external DisplayLink monitor

### Setup Scripts
The `setup.sh` orchestrates modular installation scripts:
- `i3.sh` - i3 window manager and X11 tools
- `sway.sh` - Sway and Wayland tools  
- `cli.sh` - Command-line development tools
- `editor.sh` - Helix editor and language servers
- `dotfiles.sh` - GNU Stow setup for configuration management

## Window Manager Specifics

### i3 Configuration
- **Mod key**: Win/Super key (`Mod4`)
- **Terminal**: `Super+Return` (Alacritty)
- **Browser**: `Super+Shift+Return` (LibreWolf)
- **App launcher**: `Super+Space` (rofi)
- **Monitor setup**: `Super+Shift+M` (manual trigger for external monitor)
- **Screenshot**: `Super+Print` (flameshot)

### External Monitor Setup
The monitor setup script (`~/.config/i3/monitor_setup.sh`) automatically:
- Detects ZenScreen via DVI-I-1-1 connection
- Configures 1366x768 resolution with left rotation
- Moves workspaces 4-8 to external monitor
- Returns focus to workspace 1

## Development Environment

### Language Support (via Helix LSP)
- **JavaScript/TypeScript**: typescript-language-server, prettier, biome
- **Go**: gopls, golangci-lint
- **Shell**: shfmt formatter
- **TOML**: taplo-cli
- **YAML**: yaml-language-server, yamllint
- **Markdown**: markdown-oxide, mdformat
- **Docker**: dockerfile-language-server, hadolint
- **SQL**: postgres LSP, sql-formatter
- **Astro**: astrojs-language-server
- **Tailwind**: tailwindcss-language-server

### Path Configuration
Fish shell automatically adds these to PATH:
- `~/.local/bin`
- `~/go/bin` 
- `~/.cargo/bin`
- `/home/mustardamus/.lmstudio/bin`

## Theme and Appearance

- **GTK Theme**: Qogir-Dark (flat dark theme)
- **Icon Theme**: Papirus
- **Font**: Inconsolata Nerd Font, Noto Nerd Font
- **Color Scheme**: Tokyo Night theme (used in i3, terminals, etc.)
- **Compositor**: picom for tear-free rendering (i3 only)

## Important Notes

- Configuration uses German keyboard layout (`de`)
- TouchPad tap-to-click enabled via X11 configuration
- AMD GPU TearFree enabled for better graphics performance
- Autotiling enabled for improved window management
- System uses BTRFS with Snapper snapshots and LUKS encryption