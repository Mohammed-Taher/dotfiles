#############____Binary__________
##		save as a executable on any bin directory eg . ~/bin/powermenu
 
#!/bin/env bash
 
# Options for powermenu
lock=""
logout=""
shutdown=""
reboot=" "
sleep=""
 
# Get answer from user via rofi
selected_option=$(echo "$lock
$logout
$reboot
$shutdown" | rofi -dmenu\
                  -i\
                  -p "Power"\
		  -theme "~/.config/scripts/powermenu/powermenu.rasi")
# Do something based on selected option
if [ "$selected_option" == "$lock" ]
then
    betterlockscreen --lock
elif [ "$selected_option" == "$logout" ]
then
    swaymsg exit
    hyprctl dispatch exit
    # loginctl terminate-user `whoami`
elif [ "$selected_option" == "$shutdown" ]
then
    # mpv ~/Music/alaram/shutdown.mp3 &
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
    amixer set Master mute
    systemctl suspend
else
    echo "No match"
fi
