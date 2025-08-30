#!/usr/bin/env bash

# dependency for grub-btrfs
sudo pacman -S --noconfirm inotify-tools

# autogenerate grub boot entries from snapshots
sudo pacman -S --noconfirm grub-btrfs

# automatically create snapshots when using pacman
sudo pacman -S --noconfirm snap-pac

echo "Start and enable grub-btrfsd..."
sudo systemctl start grub-btrfsd
sudo systemctl enable grub-btrfsd

if ! grep -q "grub-btrfs-overlayfs)" /etc/mkinitcpio.conf; then
	echo "Making snapshots read-write..."
	sudo sed -i "s/fsck)/fsck grub-btrfs-overlayfs)/" /etc/mkinitcpio.conf
	sudo mkinitcpio -P
fi

