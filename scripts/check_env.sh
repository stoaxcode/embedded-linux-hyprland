#!/bin/bash
# Check if critical environment variables are set

echo "=== Hyprland Environment Check ==="
echo ""

check_var() {
    if [ -n "${!1}" ]; then
        echo "✅ $1 = ${!1}"
    else
        echo "❌ $1 is not set"
    fi
}

check_var "XDG_CURRENT_DESKTOP"
check_var "XDG_SESSION_TYPE"
check_var "WAYLAND_DISPLAY"
check_var "GDK_BACKEND"
check_var "QT_QPA_PLATFORM"
check_var "MOZ_ENABLE_WAYLAND"

echo ""
echo "=== Display Info ==="
echo "Display: $DISPLAY"
echo "Wayland Display: $WAYLAND_DISPLAY"