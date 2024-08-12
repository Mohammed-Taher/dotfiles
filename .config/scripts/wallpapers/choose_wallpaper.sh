wall=$(find $HOME/Pictures/ -type f -name "*.jpg" -o -name "*.png" -o -name "*.gif" | shuf -n 1)

cp $wall $HOME/Pictures/.current_wallpaper/wall.jpg

