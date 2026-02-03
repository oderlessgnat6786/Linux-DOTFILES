#!/bin/bash

# If any rofi instance is running, kill it
if pgrep -x rofi > /dev/null; then
    pkill rofi
    exit 0
fi

# Otherwise run the menu passed as arguments
"$@" &
