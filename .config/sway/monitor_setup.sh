#!/bin/bash

# Check if HDMI monitor is connected using swaymsg
if swaymsg -t get_outputs | grep -q '"name": "HDMI-A-1"'; then
	echo "HDMI monitor detected"
	
	# HDMI above laptop screen (use actual monitor resolution 1920x1080)
	swaymsg output HDMI-A-1 resolution 1920x1080 position 0 0
	swaymsg output eDP-1 resolution 1920x1200 position 0 1080

	# Assign workspaces 5-7 to external monitor, rest to laptop
	swaymsg workspace 1 output eDP-1
	swaymsg workspace 2 output eDP-1
	swaymsg workspace 3 output eDP-1
	swaymsg workspace 4 output eDP-1
	swaymsg workspace 5 output HDMI-A-1
	swaymsg workspace 6 output HDMI-A-1
	swaymsg workspace 7 output HDMI-A-1
	swaymsg workspace 8 output eDP-1
	swaymsg workspace 9 output eDP-1
	swaymsg workspace 10 output eDP-1
else
	echo "No external monitors detected"
	# Reset to laptop only
	swaymsg output eDP-1 resolution 1920x1200 position 0 0
fi

# Focus back to workspace 1 
swaymsg workspace 1