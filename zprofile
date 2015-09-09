# System settings before starting X
. $HOME/.zshrc



# Start X
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

