#!/usr/bin/env bash

export NOPASSWD="$USER ALL=(ALL:ALL) NOPASSWD:ALL"

if [ -z "$(sudo grep "$NOPASSWD" /etc/sudoers)" ]; then
	echo "Setting up passwordless sudo for user '$USER'..."
	echo "$NOPASSWD" | sudo EDITOR='tee -a' visudo
fi

