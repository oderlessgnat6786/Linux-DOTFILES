#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x) modified by me
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-6'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi \
    -click-to-exit
