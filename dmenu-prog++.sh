#!/bin/bash

padding=100

read screenw screenh <<<$(xdpyinfo | awk -F'[ x]+' '/dimensions:/{print $3, $4}')

let "bar_width = screenw/2 - (padding * 2)"
let "height = screenh/2 - (padding * 2)"

dmenu_run -x $padding -y $height -w $bar_width -p ">>>" -l 10
