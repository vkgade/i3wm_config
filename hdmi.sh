#!/bin/bash

wplink="/home/v/Pictures/wallpaper_link"
mode=1880x980_60.00
# mode=3840x2160
#mode=1920x1080

if [ "$#" -eq 1 ]; then
    HDMI=`xrandr | grep 'HDMI.* connected' | head -n 1 | awk '{print $1}'`
    echo "HDMI: $HDMI"
    if [ -z $HDMI ]; then
        echo "No connected HDMI found!"
        HDMIS=`xrandr | grep 'HDMI.* disconnected' | awk '{print $1}'`
        for hdmi in $HDMIS; do
            echo "Tring to disconnect $hdmi"
            xrandr --output $hdmi --off
        done
    else
        HDMI_STR=`echo $HDMI | awk -F"-" '{print $1" "$2}'`
        if [ "$1" = "on" ]; then
            echo "HDMI_STR: $HDMI_STR"            
            xrandr --output $HDMI --right-of eDP-1 --mode $mode
            if [ -L "$wplink" ]; then
                feh --bg-fill "$wplink"
            fi
            SND_PROFILE=`pacmd list-cards | grep "output:hdmi.*($HDMI_STR).* available: unknown" | head -n1 | awk -F" " '{print substr($1, 1, length($1) -1)}'`
            echo "SND_PROFILE: $SND_PROFILE"
            if [ -z $SND_PROFILE ]; then
                echo "No sound card profile found!"
            else
                pacmd set-card-profile 0 $SND_PROFILE
            fi
        elif [ "$1" = "off" ]; then
            xrandr --output $HDMI --off
        else
            echo "Expected args \"on\" or \"off\""
        fi
    fi
else
    echo "Expected number of args: 1"
fi
