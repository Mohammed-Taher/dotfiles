#!/bin/bash

# Read the wallpaper file path
BG=~/Pictures/Fantasy-Lake1.png

# Get all connected monitors
MONITORS=$(wlr-randr | awk -F'[* ""]' '{print $1}' | grep -v '^ *$')

# Apply the wallpaper to all monitors
swww query > /dev/null
if [ $? -eq 0 ] ; then
  swww kill
fi

swww-daemon --format xrgb

sleep 0.1
for MONITOR in $MONITORS
do
    swww img "$BG" --outputs $MONITOR --transition-bezier 0.0,0.0,1.0,1.0 --transition-duration .8 --transition-step 255 --transition-fps 60
done
