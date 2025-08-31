#!/bin/bash

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
fi