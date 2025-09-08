#!/bin/bash

# Get current brightness percentage directly from brightnessctl output
percentage=$(brightnessctl | grep -oP '\(\K[0-9]+(?=%\))')

# Toggle between 0% and 85%
if [ "$percentage" -lt 50 ]; then
    brightnessctl set 85%
else
    brightnessctl set 0%
fi