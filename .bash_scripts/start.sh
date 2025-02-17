#!/bin/bash

# Open Warp in workspace 1
swaymsg workspace 1
swaymsg layout tabbed
swaymsg exec warp-terminal

# Switch to workspace 2
swaymsg workspace 2
swaymsg layout tabbed
swaymsg exec warp-terminal
brave-browser --enable-features=TouchpadOverscrollHistoryNavigation,UseOzonePlatform --ozone-platform=wayland

brightnessctl set 255

