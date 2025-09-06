#!/bin/bash

# Get current brightness percentage
current=$(brightnessctl get)
max=$(brightnessctl max)
percentage=$((current * 100 / max))

# Toggle between 0% and 85%
if [ "$percentage" -eq 0 ]; then
    brightnessctl set 85%
else
    brightnessctl set 0%
fi