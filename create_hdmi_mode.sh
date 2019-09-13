#!/bin/bash

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
    xrandr --newmode "1880x980_60.00"  152.50  1880 2000 2192 2504  980 983 993 1017 -hsync +vsync
    xrandr --addmode $HDMI 1880x980_60.00    
fi
