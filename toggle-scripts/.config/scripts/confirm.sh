#!/bin/sh

choice="$(printf "No\nYes" | rofi \
    -dmenu \
    -no-custom \
    -selected-row 0 \
    -p "$1" \
    -theme "$HOME/.config/rofi/applets/wlogout.rasi"
)"

[ "$choice" = "Yes" ]
