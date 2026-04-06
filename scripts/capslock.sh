#!/bin/bash

if [ "$(xset q | grep Caps | awk '{print $4}')" = "on" ]; then
    echo "<span foreground='#FF4444'>⚠ CAPS LOCK ON</span>"
else
    echo ""
fi