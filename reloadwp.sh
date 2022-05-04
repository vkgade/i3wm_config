#!/bin/bash

wplink="/home/v/pictures/wallpaper_link"

if [ -L "$wplink" ]; then
    feh --bg-fill "$wplink"
    exit 0
fi

exit 1
