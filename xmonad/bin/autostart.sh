#!/usr/bin/env bash

## Autostart Programs

# Kill already running process
_ps=(picom dunst ksuperkey mpd xfce-polkit xfce4-power-manager)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

#xrandr --output Virtual1 --mode 1920x1080
#sxhkd &
#flameshot &
wmname LG3D &
#/usr/bin/vmware-user & #Remove this line if you are using virtualbox
#/usr/bin/VBoxClient --clipboard &  #add this line if you are using virtualbox version 6.1.38
#/usr/bin/VBoxClient --vmsvga & #add this line if you are using virtualbox version 6.1.38
# Fix cursor
#xsetroot -cursor_name left_ptr

# Polkit agent
#/usr/lib/xfce-polkit/xfce-polkit &

# Enable power management
# xfce4-power-manager &

# Enable Super Keys For Menu
#ksuperkey -e 'Super_L=Alt_L|F1' &
#ksuperkey -e 'Super_R=Alt_L|F1' &

# Restore wallpaper
#hsetroot -cover /usr/share/backgrounds/nordic-wallpapers-git/sola.png
#hsetroot -cover /usr/share/backgrounds/kali-16x9/kali-red-sticker.jpg 
#hsetroot -cover ~/.xmonad/wall/a3.png
#hsetroot -cover ~/.xmonad/wall/gruvbox_a1.png

# Lauch notification daemon
#~/.xmonad/bin/xmodunst.sh

# Lauch polybar
~/.xmonad/bin/launch.sh

# Lauch compositor
~/.xmonad/bin/xmocomp.sh

# Start mpd music
# exec mpd & 

picom --config ~/.xmonad/picom.conf &
