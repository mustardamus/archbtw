#!/bin/bash

# Auto backup script using restic
# Monitors for external drive and creates/updates backups

set -euo pipefail

# Configuration
BACKUP_SOURCE="$HOME"
BACKUP_EXCLUDE_FILE="$HOME/.config/restic/exclude.txt"
LOG_FILE="/tmp/auto-backup.log"
DRIVE_LABEL="backup" # Change this to match your external drive label

# Logging function
log() {
	echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE"
}

# Check if restic is installed
check_restic() {
	if ! command -v restic &>/dev/null; then
		log "ERROR: restic is not installed. Please install it first."
		exit 1
	fi
}

# Find external drive by label
find_backup_drive() {
	local drive_path
	drive_path=$(lsblk -o NAME,LABEL,MOUNTPOINT -n | grep "$DRIVE_LABEL" | awk '{print $3}' | head -1)

	if [[ -z "$drive_path" ]]; then
		return 1
	fi

	echo "$drive_path"
}

# Initialize restic repository
init_repo() {
	local repo_path="$1"

	log "Initializing new restic repository at $repo_path"

	if ! restic -r "$repo_path" init </dev/tty; then
		log "ERROR: Failed to initialize restic repository"
		return 1
	fi

	log "Repository initialized successfully"
}

# Create backup
create_backup() {
	local repo_path="$1"

	log "Starting backup to $repo_path"

	# Build restic command with exclude file if it exists
	local restic_cmd=(restic -r "$repo_path" backup --tag "auto-backup")

	if [[ -f "$BACKUP_EXCLUDE_FILE" ]]; then
		restic_cmd+=(--exclude-file "$BACKUP_EXCLUDE_FILE")
		log "Using exclude file: $BACKUP_EXCLUDE_FILE"
	fi

	restic_cmd+=("$BACKUP_SOURCE")

	if "${restic_cmd[@]}" </dev/tty; then
		log "Backup completed successfully"
		exit 0
	else
		log "ERROR: Backup failed"
		return 1
	fi
}

# Check if repository exists and is valid
check_repo() {
	local repo_path="$1"

	if [[ ! -d "$repo_path" ]]; then
		return 1
	fi

	# Check if config file exists (indicates initialized repo)
	if [[ -f "$repo_path/config" ]]; then
		return 0
	else
		return 1
	fi
}

# Monitor for external drive
monitor_drives() {
	log "Starting drive monitoring for label: $DRIVE_LABEL"

	# Monitor udev events for block devices
	udevadm monitor --subsystem-match=block --property | while read -r line; do
		if echo "$line" | grep -q "ACTION=add"; then
			sleep 2 # Wait for drive to be mounted

			local drive_path
			if drive_path=$(find_backup_drive); then
				log "External drive detected at: $drive_path"
				process_backup "$drive_path"
			fi
		fi
	done
}

# Process backup when drive is detected
process_backup() {
	local drive_path="$1"
	local repo_path="$drive_path/restic-backup"

	log "Please enter your restic password when prompted"

	# Check if repository exists
	if check_repo "$repo_path"; then
		log "Existing repository found, creating new backup"
		create_backup "$repo_path"
	else
		log "No repository found, initializing new one"
		if init_repo "$repo_path"; then
			create_backup "$repo_path"
		fi
	fi
}

# Main function
main() {
	log "Auto-backup script started"

	check_restic

	# Create config directory if it doesn't exist
	mkdir -p "$(dirname "$BACKUP_EXCLUDE_FILE")"

	# Check if drive is already connected
	local drive_path
	if drive_path=$(find_backup_drive); then
		log "External drive already connected at: $drive_path"
		process_backup "$drive_path"
	fi

	# Start monitoring
	monitor_drives
}

# Handle script termination
trap 'log "Auto-backup script stopped"; exit 0' SIGTERM SIGINT

# Run main function
main "$@"
