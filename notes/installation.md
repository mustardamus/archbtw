# Installation

## Pre

- Download latest Arch ISO: https://archlinux.org/download/
- Write to thumb drive: https://wiki.archlinux.org/title/USB_flash_installation_medium
- Disable SecureBoot in BIOS, if UEFI system
- Boot from thumb drive

## During

- Set keyboard layout: `loadkeys de`
- Bring up wifi: `ip link set wlan0 up`
- Connect to wifi network: `iwctl`
  - `station wlan0 get-networks`
  - `station wlan0 connect "SSID"`
- Verify connection: `ping archlinux.org`
- Run installation: `archinstall`

## Installation Settings

- BTRFS, suggested volumes, Snapper
- LUKS encryption
- Grub
- Root password, first user with sudo rights
- Additional packages: `networkmanager` & `git`

## Post

- Start terminal with `Win+Return`
- Set keyboard layout: `swaymsg input type:keyboard xkb_layout de` (: = Shift+Ö, \_ = Shift+?)
- Bring up wifi: `sudo ip set wlan0 up`
- Connect to wifi network: `nmtui`
- `git clone https://github.com/mustardamus/archbtw.git`
- `cd archbtw`
- `bash setup.sh`
- `sudo reboot now`
