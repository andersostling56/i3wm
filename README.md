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
- launch --day is called from cron on weekdays at 9 am (when the stock market open). "day" uses the top and bottom bars.
- launch --night is called at 6 pm when the market have have been closed for 30 minutes. "night" delete the bottom bar.

main.ini: polybar main configuration file with bar defintions (primary and top in my case)
colors.ini: generic definitions
workspace.ini: as above
stockmarket.ini: modules for each stock to monitor
- the module calls aktier.sh to fetch current rate for a specific stock

pwidgets/scripts/rofi:
- style files for lanucher.rasi and powermenu.rasi

libinput-gestures.conf: Defintion of swipe up/down on touchpad.
- Requires installation of libinput-tools
-    sudo apt install python3 python3-gi meson xdotool libinput-tools gettext
-    git clone https://github.com/bulletmark/libinput-gestures.git
-    cd libinput-gestures/
-    make && sudo make install
-    sudo ./libinput-gestures-setup install && libinput-gestures-setup start

Note: i3 config contains "exec --no-startup-id libinput-gestures"















