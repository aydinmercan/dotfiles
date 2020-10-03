setxkbmap -option caps:swapescape &
xrandr --output DP-4 --primary --right-of HDMI-0 &
picom &
hsetroot -solid "#000000" &
dunst &
slstatus &
xwallpaper --zoom ~/.config/wallpaper.png &
xsetwacom set 18 MapToOutput HEAD-0 &
dbus-launch dwm
