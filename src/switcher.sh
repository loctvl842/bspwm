layout=$(bspc query -T -d | jq -r .layout)
if [[ $layout == "tiled" ]]; then
	bspc node -f next.local.!hidden.window
else
	skippy-xd-runner --activate --next
fi
