#!/usr/bin/env bash


## launch alacritty with xmonad config

CONFIG="$HOME/.config/alacritty/alacritty.yml"

if [ "$1" == "--float" ]; then
        alacritty --class 'alacritty-float,alacritty-float' --config-file "$CONFIG"
elif [ "$1" == "--full" ]; then
        alacritty --class 'Fullscreen,Fullscreen' --config-file "$CONFIG" \
                          -o window.startup_mode=fullscreen window.padding.x=30 window.padding.y=>
                          window.opacity=0.95 font.size=14
elif [ "$1" == "--current" ]; then
        alacritty --working-directory "$(pwd)" --config-file "$CONFIG"

else
        alacritty --config-file "$CONFIG"
fi
