#!/bin/basih

# Sets my wallpaper
exec hsetroot -fill ~/pictures/wallpaper/gogh_animaatjes.jpg &

# Normal cursor
#xsetroot -cursor_name left_ptr &
    
# Load cursor theme with window manager
xrdb ~/.Xresources &

# Set Xresources to be sourced
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources


# Makes things nice 'n shadowy
compton &


# Revert to conventional mouse cursor
xsetroot -cursor_name left_ptr

# Makes things nice 'n shadowy
conky &


# Save my eyes
redshift -l 51.7:2.2 &


# Tune power management
exec powertop --auto-tune &

# Auto mounts USB to /media/
exec udiskie -N &




# Setup window manager
sxhkd &
urxvt &
exec bspwm


# Fonts
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/misc
xset +fp $HOME/.fonts
xset fp rehash



