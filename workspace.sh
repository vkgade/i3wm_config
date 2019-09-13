#!/bin/bash

if [ "$#" -eq 1 ]; then
    PRIMARY_SCREEN=$( xrandr -q | awk '/ connected primary/ {print $1}' )
    HDMI=`xrandr | grep 'HDMI.* connected' | head -n 1 | awk '{print $1}'`
    echo "HDMI: $HDMI"
    if [ "$1" = "primary" ]; then
        if [ -n "$PRIMARY_SCREEN" ] ; then
            i3-msg "move workspace to output $PRIMARY_SCREEN"
        else
            # there is no primary screen
            i3-nagbar -m 'No primary screen defined' -t warning
        fi
    elif [ "$1" = "hdmi" ]; then
        echo "HDMI--: $HDMI"
        if  [ -z $HDMI ]; then
            echo "No HDMI found"            
        else
            i3-msg "move workspace to output $HDMI"

        fi
    else
        echo "Expected arguments \"primary\" or \"hdmi\""
    fi
else
    echo "Expected number of arguments: 1"
fi
