#!/bin/sh

# TODO: | sort -s -k 1,1

file=~/.todo
height=$(cat $file | wc -l)
prompt="Add/delete a task"

if [ "$height" -gt 20 ]; then height=20; fi

cmd=$(cat "$file" | dmenu $@ -l "$height" -p "$prompt:" )

while [ -n "$cmd" ]; do
	grep -q "^$cmd" $file
	if [ $? = 0 ]; then
		grep -v "^$cmd" $file > /tmp/todo
		mv /tmp/todo $file
		height=$((height-1))
	else
		echo "$cmd" >> $file
		height=$((height+1))
	fi
	if [ "$height" -gt 20 ]; then height=20; fi
	cmd=$(cat $file | dmenu $@ -l "$height" -p "$prompt:" )
done

exit 0
