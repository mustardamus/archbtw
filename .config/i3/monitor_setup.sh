#!/bin/bash

# Start DisplayLink service and load module if not already running
if ! systemctl is-active --quiet displaylink.service; then
    sudo systemctl start displaylink.service
    sleep 2  # Give DisplayLink time to initialize
    sudo modprobe evdi
    sleep 1  # Give module time to load
fi

# Check if DVI-I-1-1 (ZenScreen) is connected
if xrandr | grep -q "DVI-I-1-1 connected"; then
    # Configure the monitor
    xrandr --output DVI-I-1-1 --mode 1366x768 --rotate left --left-of eDP
    
    # Move workspaces 4-8 to external monitor
    i3-msg "workspace 4; move workspace to output DVI-I-1-1"
    i3-msg "workspace 5; move workspace to output DVI-I-1-1"
    i3-msg "workspace 6; move workspace to output DVI-I-1-1"
    i3-msg "workspace 7; move workspace to output DVI-I-1-1"
    i3-msg "workspace 8; move workspace to output DVI-I-1-1"
    
    # Return to workspace 1
    i3-msg "workspace 1"
else
    # If monitor not detected, stop DisplayLink to save resources
    echo "ZenScreen not detected. Stopping DisplayLink service..."
    sudo systemctl stop displaylink.service
    sudo modprobe -r evdi 2>/dev/null
fi