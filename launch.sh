#!/bin/bash

DIR="$HOME/.config/polybar/pwidgets"

kill_bar() {
	# Terminate already running bar instances
	killall -q polybar

	# Wait until the processes have been shut down
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
}

## Main
if [[ "$1" == "--day" ]]; then
	kill_bar
	polybar -q secondary -c $DIR/main.ini &
	polybar -q top -c $DIR/main.ini &

## Apps
elif [[ "$1" == "--night" ]]; then
	kill_bar
	polybar -q top -c $DIR/main.ini &

else
	cat <<- _EOF_
	No widget specified, Available widgets:
	--main    --apps    --system    --mpd
	--ws      --cpu     --memory    --fs
	_EOF_
fi
