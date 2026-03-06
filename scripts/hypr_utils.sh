#!/bin/bash
# Hyprland utility functions using hyprctl

case "$1" in
    "info")
        # Show detailed system info
        echo "=== Active Window ==="
        hyprctl activewindow
        echo ""
        echo "=== Active Workspace ==="
        hyprctl activeworkspace
        echo ""
        echo "=== Monitors ==="
        hyprctl monitors
        ;;
    
    "reload")
        # Reload and check for errors
        hyprctl reload
        sleep 0.5
        errors=$(hyprctl errors)
        if [ -z "$errors" ]; then
            notify-send "Hyprland" "Config reloaded successfully"
        else
            notify-send -u critical "Hyprland Errors" "$errors"
        fi
        ;;
    
    "window-class")
        # Get current window class for window rules
        hyprctl activewindow -j | jq -r '.class'
        ;;
    
    *)
        echo "Usage: $0 {info|reload|window-class}"
        exit 1
        ;;
esac