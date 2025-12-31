#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HYPRSHOT_DIR="/home/DEV/Pictures/Screenshots/Hyprshots"

alias hypr-conf='nano ~/.config/hypr/hyprland.conf'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias waybar-conf='nano ~/.config/waybar/config.jsonc'
alias hyprpaper-conf='nano ~/.config/hypr/hyprpaper.conf'
PS1='[\u@\h \W]\$ '
