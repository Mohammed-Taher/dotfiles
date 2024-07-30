
# query the current state of swww (query's exit code being 0 means swww is running)
# swww query > /dev/null
# if swww's running, kill it
# if [ $? -eq 0 ] ; then
#     swww kill
# fi
# start swww again in xrgb format (solves the greyscale issue) and disown the process
# (detach it from current terminal)
nohup swww-daemon --format xrgb &> /dev/null &disown

DIR=$HOME/Pictures/
PICS=($(ls ${DIR}))
RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]}]}

sleep 0.1
swww img --transition-fps 30 --transition-type grow --transition-pos "$(hyprctl cursorpos)" --transition-duration 3 ${DIR}/${RANDOMPICS}
dunstify "Wallpaper changed!"

