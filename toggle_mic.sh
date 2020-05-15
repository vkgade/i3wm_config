#!/bin/bash

MIC_PROFILE=""

if [ "$#" -eq 1 ]; then    
    if [ "$1" = "monitor" ]; then
        MIC_PROFILE=`pacmd list-sources | grep -E "name:.*monitor" | head -n 1 | awk '{print substr($2, 2, length($2)-2)}'`
        echo "Setting sound to analog: $MIC_PROFILE"
    else
        echo "Only valid args \"monitor\""
        exit 1
    fi
    echo "MIC_PROFILE: $MIC_PROFILE"
    if [ -z $MIC_PROFILE ]; then
        echo "No input card or mic profile found!"
    else
        pacmd set-default-source $MIC_PROFILE
        echo "Changed the source profile to $1"
    fi        
else
    echo "Number of arguments expected: 1"
fi
