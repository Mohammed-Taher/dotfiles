#!/bin/bash

nohup swww-daemon --format xrgb &> /dev/null &disown

wall=$(find $HOME/Pictures/ -type f -name "*.jpg" -o -name "*.png" -o -name "*.gif" | shuf -n 1)

swww img --transition-fps 30 --transition-type grow --transition-pos "$(hyprctl cursorpos)" --transition-duration 3 $wall

# cp $wall $HOME/.config/rofi/launcher/images/d.jpg

notify-send "Wallpaper changed!"
