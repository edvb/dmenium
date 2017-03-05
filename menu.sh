#!/usr/bin/env bash

draw_line () {
	for i in {1..10}; do
		printf "―"
	done
}

menu_list="  run\n  term\n  web\n  file\n  edit\n  view\n  todo\n  calc\n  man\n  htop\n$(draw_line)\n  exit\n"
dmenucmd="dmenu -c -i -l 12"
cmd=$(echo -e "$menu_list" | eval "$dmenucmd")

case $cmd in
	*run)
		"$HOME"/.config/dmenu/prog.sh -c -l 20 ;;
	*term)
		tabbed -c st -w ;;
	*web)
		firefox > /dev/null 2>&1 ;;
	*file)
		thunar > /dev/null 2>&1 ;;
	*edit) # TODO dont open if dmenu returned empty
		st -e vim -p "$("$HOME"/.config/dmenu/browse.sh -c)" ;;
	*view) # TODO replace with browse.sh and feh
		geeqie "$HOME"/pictures/ ;;
	*todo)
		"$HOME"/.config/dmenu/todo.sh -c ;;
	*calc)
		"$HOME"/.config/dmenu/calc.sh -c -l 1;;
	*man)
		st -e man $("$HOME"/.config/dmenu/man.sh -c -l 20) ;;
	*htop)
		st -g 68x6 -e htop ;;
	*exit)
		# "$HOME"/.config/dmenu/quit.sh -c ;;
		cbpp-exit ;;
	*)
		$cmd
esac

exit 0
