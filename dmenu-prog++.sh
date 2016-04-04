#!/bin/bash

padding=100

screenw=$(xrandr | fgrep '*' | sed s/x/\ / | awk '{print $1}' | tail -1)
screenh=$(xrandr | fgrep '*' | sed s/x/\ / | awk '{print $2}' | tail -1)

let "bar_width = screenw - (padding * 2)"
let "height = screenh/2 - (padding * 2)"

dmenu_run -x $padding -y $height -w $bar_width -p ">>>" -l 10
