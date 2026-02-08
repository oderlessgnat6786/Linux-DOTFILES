#!/usr/bin/env bash

state=$(bluetoothctl show | awk '/Powered:/ {print $2}')

if [ "$state" = "yes" ]; then
  echo true
else
  echo false
fi