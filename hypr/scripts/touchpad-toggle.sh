#!/bin/sh

TOUCHPAD="etps/2-elantech-touchpad"

STATE=$(hyprctl devices -j | jq -r --arg name "$TOUCHPAD" \
    '.mice[] | select(.name == $name) | .enabled')

if [ "$STATE" = "true" ]; then
    hyprctl eval "device[$TOUCHPAD]:enabled false"
else
    hyprctl eval "device[$TOUCHPAD]:enabled true"
fi