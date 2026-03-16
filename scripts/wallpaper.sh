#!/bin/bash
# Set wallpaper using swww

# Kill existing swww daemon
killall swww-daemon 2>/dev/null

# Start daemon
swww-daemon &

# Wait for daemon to be ready
sleep 0.5

# Set wallpaper
swww img ~/Pictures/Wallpapers/wall1.png