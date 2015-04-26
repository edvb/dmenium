#!/usr/bin/env bash
# Caluctor using dmenu as interface

# run dmenu calculator while the result is not empty
while : ; do
    result=$(xclip -o -sel clip | dmenu -p Calc | xargs echo | bc 2>&1)
    if [[ $result ]]; then # if result is not empty (the last one), copy to clipboard
        echo $result | xclip -sel clip
    fi
    [[ $result ]] || break # if result is empty, break from while loop
done
