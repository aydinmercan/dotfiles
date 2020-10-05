setxkbmap -option caps:swapescape &
#xrandr --output DP-4 --primary --right-of HDMI-0 &
picom &
dunst &
slstatus &
xwallpaper --zoom ~/.config/wallpaper.png &
xrdb -merge ~/.Xresources &
xsetwacom set 18 MapToOutput HEAD-0 &
dbus-launch dwm
