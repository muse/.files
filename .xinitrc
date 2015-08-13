#!/bin/sh

if [[ -d /etc/X11/xinit/xinitrc.d ]]; then
    for EXE in /etc/X11/xinit/xinitrc.d/*; do
        [[ -x "$EXE" ]] && . "$EXE"
    done
    unset EXE
fi

[[ -e $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

xsetroot -cursor_name left_ptr &
xset +fp /usr/share/fonts/local
xset r rate 220 65 &
xset fp rehash

feh --no-fehbg --bg-scale /home/mvdw/Pictures/Wallpapers/shelookssmart.jpg
dunst -config /home/mvdw/.config/dunstrc &
compton &
mpdscribble &
mpd &

sxhkd -f 100 &

exec bspwm
