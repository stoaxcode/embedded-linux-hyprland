#!/bin/bash

if /usr/bin/hyprctl devices | grep -iq "caps lock: yes"; then
    echo "⚠ CAPS LOCK ON"
fi