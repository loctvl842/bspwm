killall conky
sleep 0.1
feh --bg-fill --randomize ~/Pictures/wallpaper/* &
sleep 0.1
# conky
conky -c ~/.config/conky/conky1.conf &
conky -c ~/.config/conky/conky2.conf &
