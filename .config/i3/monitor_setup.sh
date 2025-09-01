#!/bin/bash

# Variables to track which monitors are connected
ZENSCREEN_CONNECTED=false
HDMI_CONNECTED=false

# Check if HDMI monitor is connected
if xrandr | grep -q "HDMI-A-0 connected"; then
    HDMI_CONNECTED=true
    echo "HDMI monitor detected"
fi

# Start DisplayLink service and load module if not already running
# Only start if we actually need it (check for DVI-I-1-1)
if xrandr | grep -q "DVI-I-1-1"; then
    if ! systemctl is-active --quiet displaylink.service; then
        sudo systemctl start displaylink.service
        sleep 2  # Give DisplayLink time to initialize
        sudo modprobe evdi
        sleep 1  # Give module time to load
    fi
    
    # Check again after DisplayLink is loaded
    if xrandr | grep -q "DVI-I-1-1 connected"; then
        ZENSCREEN_CONNECTED=true
        echo "ZenScreen detected"
    fi
fi

# Configure monitors based on what's connected
if [ "$HDMI_CONNECTED" = true ] && [ "$ZENSCREEN_CONNECTED" = true ]; then
    # Both monitors connected
    echo "Configuring both HDMI and ZenScreen monitors..."
    
    # HDMI above laptop, ZenScreen to the left
    xrandr --output HDMI-A-0 --mode 2560x1440 --above eDP \
           --output DVI-I-1-1 --mode 1366x768 --rotate left --left-of eDP
    
    # Move workspaces: 1-3 on laptop, 4-6 on HDMI (above), 7-9 on ZenScreen (left)
    i3-msg "workspace 4; move workspace to output HDMI-A-0"
    i3-msg "workspace 5; move workspace to output HDMI-A-0"
    i3-msg "workspace 6; move workspace to output HDMI-A-0"
    
    i3-msg "workspace 7; move workspace to output DVI-I-1-1"
    i3-msg "workspace 8; move workspace to output DVI-I-1-1"
    i3-msg "workspace 9; move workspace to output DVI-I-1-1"
    
elif [ "$HDMI_CONNECTED" = true ]; then
    # Only HDMI connected
    echo "Configuring HDMI monitor above laptop..."
    
    # HDMI above laptop screen
    xrandr --output HDMI-A-0 --mode 2560x1440 --above eDP
    
    # Move workspaces 4-8 to HDMI monitor
    i3-msg "workspace 4; move workspace to output HDMI-A-0"
    i3-msg "workspace 5; move workspace to output HDMI-A-0"
    i3-msg "workspace 6; move workspace to output HDMI-A-0"
    i3-msg "workspace 7; move workspace to output HDMI-A-0"
    i3-msg "workspace 8; move workspace to output HDMI-A-0"
    
elif [ "$ZENSCREEN_CONNECTED" = true ]; then
    # Only ZenScreen connected
    echo "Configuring ZenScreen monitor..."
    
    # ZenScreen to the left of laptop
    xrandr --output DVI-I-1-1 --mode 1366x768 --rotate left --left-of eDP
    
    # Move workspaces 4-8 to ZenScreen
    i3-msg "workspace 4; move workspace to output DVI-I-1-1"
    i3-msg "workspace 5; move workspace to output DVI-I-1-1"
    i3-msg "workspace 6; move workspace to output DVI-I-1-1"
    i3-msg "workspace 7; move workspace to output DVI-I-1-1"
    i3-msg "workspace 8; move workspace to output DVI-I-1-1"
    
else
    echo "No external monitors detected"
fi

# Return to workspace 1
i3-msg "workspace 1"

# Stop DisplayLink if ZenScreen not connected to save resources
if [ "$ZENSCREEN_CONNECTED" = false ] && systemctl is-active --quiet displaylink.service; then
    echo "ZenScreen not detected. Stopping DisplayLink service..."
    sudo systemctl stop displaylink.service
    sudo modprobe -r evdi 2>/dev/null
fi