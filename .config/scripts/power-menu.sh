#!/bin/bash

theme="powermenu"
#uptime="`uptime -p | sed -e 's/up //g'`"
logout="  Logout"
lock="  Lock"
reboot="  Reboot"
shutdown="  Shutdown"

options="$logout\n$lock\n$reboot\n$shutdown"

opt=$(echo -e "$options" | rofi -theme "$theme" -dmenu)
case $opt in
	$logout) i3-msg exit ;;
	$lock) betterlockscreen -l blur ;;
	$reboot) systemctl reboot ;;
	$shutdown) systemctl poweroff ;;

esac
