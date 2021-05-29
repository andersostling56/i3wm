#!/bin/bash

status=`~/.config/polybar/scripts/vpn-openvpn-status.sh | cut  -d" " -f3`
if [ "$status" == "connected" ]; then
	nmcli con down id Höganäs
else
	nmcli con up id Höganäs
fi

