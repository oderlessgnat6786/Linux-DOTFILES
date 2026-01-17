#!/usr/bin/env bash

state=$(hyprctl getoption plugin:hyprbars:enabled -j | jq -r '.int')

if [ "$state" -eq 1 ]; then
  hyprctl keyword plugin:hyprbars:enabled false
else
  hyprctl keyword plugin:hyprbars:enabled true
fi
