#!/usr/bin/env bash
# Use dmenu to focus on an open window

win="$(wmctrl -l | dmenu -l 10 "$@" | cut -d ' ' -f 1)"
[ "$win" ] && wmctrl -ia "$win" &
