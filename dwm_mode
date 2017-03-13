#!/usr/bin/env bash
# Change dwm window mode with dmenu

# note that you have to manualy add and change the menu for your dwm config

menu_list="tile\nfloating\nhtile\ndeck\ncentered\nspiral\ndwindle\ngaplessgrid\nhorizgrid\ntcl\nmonocle\n"
dmenucmd="dmenu $@ -l 11"
cmd=$(echo -ne "$menu_list" | eval "$dmenucmd")

case $cmd in
	tile)
		xdotool key ctrl+super+t ;;
	floating)
		xdotool key ctrl+super+f ;;
	htile)
		xdotool key ctrl+super+h ;;
	deck)
		xdotool key ctrl+super+d ;;
	centered)
		xdotool key ctrl+super+c ;;
	spiral)
		xdotool key ctrl+super+s ;;
	dwindle)
		xdotool key ctrl+super+shift+s ;;
	gaplessgrid)
		xdotool key ctrl+super+g ;;
	horizgrid)
		xdotool key ctrl+super+shift+g ;;
	tcl)
		xdotool key ctrl+super+r ;;
	monocle)
		xdotool key ctrl+super+m ;;
esac

