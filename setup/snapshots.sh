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

# # Restore a snapshot

# Boot into the last working snapshot, from Grub.
# `/dev/sda2` is the partition where the btrfs volume and its
# subvolumes are setup.

# ```shell
# sudo mount -t btrfs -o subvol=/ /dev/sda2 /mnt
# sudo mv /mnt/@ /mnt/@.broken
# ls /mnt/@.snapshots/
# sudo btrfs subvolume snapshot /mnt/@.snapshots/1/snapshot /mnt/@
# sudo umount /mnt
# reboot
# ```

