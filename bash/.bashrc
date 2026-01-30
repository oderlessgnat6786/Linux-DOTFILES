#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
eval "$(starship init bash)"

if [[ -n "$KITTY_WINDOW_ID" ]]; then
	pfetch
fi

export HYPRSHOT_DIR="/home/DEV/Pictures/Screenshots/Hyprshots"
alias neofetch="echo 'Neofetch not availabe, using fastfetch instead' && fastfetch"
alias vi='vim'
alias bash-conf='vim ~/.bashrc'
alias hypr-conf='vim ~/.config/hypr/hyprland.conf'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias waybar-conf='vim ~/.config/waybar/config.jsonc'
alias binds-conf='vim ~/.config/hypr/binds.conf'
PS1='[\u@\h \W]\$ '
