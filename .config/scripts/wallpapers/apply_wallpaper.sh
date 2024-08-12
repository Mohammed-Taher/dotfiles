#!/bin/bash

# Read the wallpaper file path
BG=~/Pictures/.current_wallpaper/wall.jpg


# Apply the wallpaper to all monitors
# swww query > /dev/null
# if [ $? -eq 0 ] ; then
#   swww kill
# fi

# swww-daemon --format xrgb

sleep 0.1
swww img "$BG" --transition-bezier 0.0,0.0,1.0,1.0 --transition-duration .8 --transition-step 255 --transition-fps 60


