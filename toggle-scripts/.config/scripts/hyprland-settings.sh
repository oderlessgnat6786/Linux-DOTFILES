#!/bin/sh

CONFIG_DIR="$HOME/.config/hypr"
MY_EDITOR="vim" 
TERMINAL="kitty" 

if [ -z "$WAYLAND_DISPLAY" ] && [ -z "$DISPLAY" ]; then
    $MY_EDITOR "$CONFIG_DIR/hyprland.lua"
    exit 0
fi

choice=$(printf "  Main Config\n  General\n  Keybinds\n󰂺  Variables\n  Autostart\n󰒋  Window Rules" | rofi -dmenu -no-custom -p "Hyprland Config" -theme "~/.config/rofi/applets/settings.rasi")

case "$choice" in
  "  Main Config")
    $TERMINAL -e $MY_EDITOR "$CONFIG_DIR/hyprland.lua"
    ;;
  "  General")
    $TERMINAL -e $MY_EDITOR "$CONFIG_DIR/config.lua"
    ;;
  "  Keybinds")
    $TERMINAL -e $MY_EDITOR "$CONFIG_DIR/binds.lua"
    ;;
  "󰂺  Variables")
    $TERMINAL -e $MY_EDITOR "$CONFIG_DIR/variables.lua"
    ;;
  "  Autostart")
    $TERMINAL -e $MY_EDITOR "$CONFIG_DIR/autostart.lua"
    ;;
  "󰒋  Window Rules")
    $TERMINAL -e $MY_EDITOR "$CONFIG_DIR/rules.lua"
    ;;
  *)
    exit 0
    ;;
esac