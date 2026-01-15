#!/bin/bash

# Get list of windows: address | class | title
windows=$(hyprctl clients -j | jq -r '
  .[] | "\(.address) | \(.class) | \(.title)"'
)

# Abort if no windows
[ -z "$windows" ] && exit 0

# Select window
selected=$(echo "$windows" | rofi -dmenu -i -p "Force quit window")

[ -z "$selected" ] && exit 0

addr=$(echo "$selected" | cut -d' ' -f1)

# Confirm
#rofi -dmenu -p "Type YES to confirm kill" <<< "NO\nYES" | grep -q YES || exit 0

# Kill selected window
hyprctl dispatch killactive address:$addr
