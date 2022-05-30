ADDITIONAL_GAP=5
BSPWM_CONFIG='/home/loc/.config/bspwm/bspwmrc'

topPadding=$(grep 'top_padding' ~/.config/bspwm/bspwmrc | grep -oP 'top_padding \K\w+')
theme=$(grep -w theme ~/.config/i3/config | grep -oP 'theme \K\w+')
height=$(grep -w height ~/.config/polybar/$theme/bar-settings.ini | grep -oP 'height = \K\w+')

newGap=`expr $height + $ADDITIONAL_GAP`
sed -i -e "0,/top_padding .*/s//top_padding $newGap/" $BSPWM_CONFIG
polybar-msg cmd show
bspc config top_padding $newGap
