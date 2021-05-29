# i3wm
i3 wm with Polybar and custom modules
This repo hold instructions and configuarion for my own configuration, made for a Lenovo Thinkpad T470s and a BENQ 4K display connected to a DP port in the Lenovo docking station.

Files
i3 config file
Polybar with module Pwidgets (heavily modified), Rofi configs for SYSMENU and POWERMENU, bash scripts for retrieving stock market values from Yahoo finance and for toggling VPN connection to a remote site on and off (with indicator in top bar)

contig: iw main configuration

gruvbox.png: wallpaper

aktier.sh: module script to fetch stock market values

rofi-power-menu.sh: Modified to inclyde VPN toggle

toggle-vpn.sh: script to turn VPN on or off using a predefined VPN profile. Called from rofi-pwer-menu.

vpn-openvpn-status.sh: script called from polybar module to reurn label text for the top bar

launch.sh: script called from i3 startup config to create polybar 







