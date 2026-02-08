#!/bin/sh
choice=$(printf "  Network Manager\n󰂯 Bluetooth Manager\n  Audio Manager\n Clipboard Manager" | rofi -dmenu -p "Settings" -theme "~/.config/rofi/applets/settings.rasi")


case "$choice" in
  "  Network Manager")
    nm-connection-editor
    ;;
  "󰂯 Bluetooth Manager")
    blueman-manager
    ;;
  "  Audio Manager")
    pavucontrol
    ;;
  " Clipboard Manager")
    copyq toggle
    ;;
  *)
    # User pressed Esc or clicked outside
    exit 0
    ;;
esac