#!/bin/bash
# Cron script for 30-min activity journal

#if pgrep "gvim" > /dev/null
if ps aux | grep "Vimwiki" | grep -v grep > /dev/null
then
  donothing=0
else
  export DISPLAY=:0
  /usr/bin/gvim -geometry 80x10+600+400 -c "VimwikiMakeDiaryNote" + -c "DiaryTime"
  aplay /usr/share/sounds/purple/login.wav
fi
