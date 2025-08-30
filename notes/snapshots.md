# Restore a snapshot

Boot into the last working snapshot, from Grub.
`/dev/sda2` is the partition where the btrfs volume and its
subvolumes are setup.

```shell
sudo mount -t btrfs -o subvol=/ /dev/sda2 /mnt
sudo mv /mnt/@ /mnt/@.broken
ls /mnt/@.snapshots/
sudo btrfs subvolume snapshot /mnt/@.snapshots/1/snapshot /mnt/@
sudo umount /mnt
reboot
```


