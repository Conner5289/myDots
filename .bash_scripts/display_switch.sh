#!/bin/bash

#Script to switch displays for sway, keeps only one active
#I didn't make it 

INTERNAL_DISPLAY="eDP-1"  # Change this to match your internal monitor name
EXTERNAL_DISPLAY=$(swaymsg -t get_outputs | jq -r '.[] | select(.name!="'"$INTERNAL_DISPLAY"'") | .name')

if [[ -n "$EXTERNAL_DISPLAY" ]]; then
    swaymsg output "$INTERNAL_DISPLAY" disable
    swaymsg output "$EXTERNAL_DISPLAY" enable position 0 0
else
    swaymsg output "$INTERNAL_DISPLAY" enable position 0 0
fi
