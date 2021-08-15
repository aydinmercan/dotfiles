# Options
xrandr --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --mode 3840x2160 --pos 1920x0 --rotate normal
setxkbmap -option caps:swapescape
setxkbmap -layout us,tr -option 'grp:alt_caps_toggle'

# Window Management
picom &
exec awesome
