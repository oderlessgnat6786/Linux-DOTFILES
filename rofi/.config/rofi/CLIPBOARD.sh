#!/usr/bin/env bash

cliphist list \
  | rofi -dmenu -p "Clipboard" -theme "~/.config/rofi/applets/cliphist.rasi" \
  | cliphist decode \
  | wl-copy
