# i3wm
Edit 30/5

* Made stock labels clickable in modules.ini 
* Fixed "move to workspace" for MS Edge and Spotify in i3/config

i3 wm with Polybar and custom modules
This repo hold instructions and configuarion for my own configuration, made for a Lenovo Thinkpad T470s and a BENQ 4K display connected to a DP port in the Lenovo docking station.

Files
i3 config file
Polybar with module Pwidgets (heavily modified), Rofi configs for SYSMENU and POWERMENU, bash scripts for retrieving stock market values from Yahoo finance and for toggling VPN connection to a remote site on and off (with indicator in top bar)

~/.config/i3/config:  main configuration

~/Pictures/gruvbox.png:  wallpaper

~/Pictures/lock.png:  lock screen wallpaper

~/.config/polybar/scripts/aktier.sh:  module to fetch stock market values

~/.config/polybar/pwidgets/scripts/rofi/rofi-power-menu.sh:  Modified to inclyde VPN toggle

~/.config/polybar/scripts/toggle-vpn.sh:  script to turn VPN on or off using a predefined VPN profile. Called from rofi-pwer-menu.

~/.config/polybar/scripts/vpn-openvpn-status.sh:  script called from polybar module to reurn label text for the top bar

~/.config/polybar/pwiedgets/launch.sh: script called from i3 startup config to create polybar 
- launch --day is called from cron on weekdays at 9 am (when the stock market open). "day" uses the top and bottom bars.
- launch --night is called at 6 pm when the market have have been closed for 30 minutes. "night" delete the bottom bar.

~/.config/polybar/pwidgets/main.ini: polybar main configuration file with bar defintions (primary and top in my case)
~/.config/polybar/pwidgets/colors.ini: generic definitions
~/.config/polybar/pwidgets/workspace.ini: as above
~/.config/polybar/pwidgets/stockmarket.ini: modules for each stock to monitor
- the module calls aktier.sh to fetch current rate for a specific stock

Note: I have two monitors, a laptop and a 4K DP monitor. The file main.ini holds two statements regarding screen output
 
 [bar/main]

 monitor = DP-2-2
 
 monitor-fallback = eDP-1


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















