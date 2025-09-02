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
		sleep 2 # Give DisplayLink time to initialize
		sudo modprobe evdi
		sleep 1 # Give module time to load
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
elif [ "$HDMI_CONNECTED" = true ]; then
	# Only HDMI connected
	echo "Configuring HDMI monitor above laptop..."

	# HDMI above laptop screen
	xrandr --output HDMI-A-0 --mode 2560x1440 --above eDP
elif [ "$ZENSCREEN_CONNECTED" = true ]; then
	# Only ZenScreen connected
	echo "Configuring ZenScreen monitor..."

	# ZenScreen to the left of laptop
	xrandr --output DVI-I-1-1 --mode 1366x768 --rotate left --left-of eDP
else
	echo "No external monitors detected"
fi

# Stop DisplayLink if ZenScreen not connected to save resources
if [ "$ZENSCREEN_CONNECTED" = false ] && systemctl is-active --quiet displaylink.service; then
	echo "ZenScreen not detected. Stopping DisplayLink service..."
	sudo systemctl stop displaylink.service
	sudo modprobe -r evdi 2>/dev/null
fi
