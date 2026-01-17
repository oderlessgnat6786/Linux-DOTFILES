#!/bin/sh

choice=$(printf "No\nYes" | rofi -dmenu -p "$1")

[ "$choice" = "Yes" ]
