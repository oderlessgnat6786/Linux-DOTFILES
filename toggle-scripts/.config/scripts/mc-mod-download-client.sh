#!/bin/bash

#place ur mod directory
MDIR=/home/DEV/.minecraft/mods
MOD=$1
mv "$MOD" "$MDIR"
notify-send "Moved Mod $MOD to $MDIR"
