#!/usr/bin/env bash

#i3status -c ~/.config/i3/i3blocks.conf | while :
#do
#  read line
#  pomodoro=`python ~/Apps/i3-gnome-pomodoro/pomodoro-client.py status`
#  echo "$pomodoro| $line" || exit 1
#done

pomodoro=`python ~/Apps/i3-gnome-pomodoro/pomodoro-client.py status`
echo "$pomodoro"
