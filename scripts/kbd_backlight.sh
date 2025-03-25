#!/bin/bash
 STATE_FILE="$HOME/.cache/kbd_backlight_state"
 if [ ! -f "$STATE_FILE" ]; then
     echo "off" > "$STATE_FILE"
 fi
 CURRENT_STATE=$(cat "$STATE_FILE")
 if [ "$CURRENT_STATE" = "off" ]; then
     echo "on" > "$STATE_FILE"
     (while [ "$(cat $STATE_FILE)" = "on" ]; do
         brightnessctl -d input4::scrolllock set 1 >/dev/null 2>&1
         brightnessctl -d input5::scrolllock set 1 >/dev/null 2>&1
         sleep 0.02
     done) &
     echo $! > "$HOME/.cache/kbd_backlight_pid"
 else
     echo "off" > "$STATE_FILE"
     if [ -f "$HOME/.cache/kbd_backlight_pid" ]; then
         kill $(cat "$HOME/.cache/kbd_backlight_pid") >/dev/null 2>&1
     fi
     brightnessctl -d input4::scrolllock set 0 >/dev/null 2>&1
     brightnessctl -d input5::scrolllock set 0 >/dev/null 2>&1
fi
