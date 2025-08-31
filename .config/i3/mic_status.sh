#!/bin/bash
# Script to monitor microphone status for i3status

while true; do
    MUTE_STATE=$(pactl get-source-mute @DEFAULT_SOURCE@)
    if [[ "$MUTE_STATE" == *"yes"* ]]; then
        echo "MUTED" > /tmp/mic_status
    else
        echo "ON" > /tmp/mic_status
    fi
    sleep 1
done