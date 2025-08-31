#!/bin/bash
# Script to update brightness for i3status

while true; do
    BRIGHTNESS=$(brightnessctl -m | cut -d',' -f4 | tr -d '%')
    echo $BRIGHTNESS > /tmp/brightness
    sleep 2
done