setxkbmap -option caps:swapescape &
picom &
hsetroot -solid "#000000" &
dunst &
slstatus &
xwallpaper --zoom ~/.config/wallpaper.png &
xrdb -merge ~/.Xresources &
xsetwacom set 18 MapToOutput HEAD-0 &
dbus-launch dwm
