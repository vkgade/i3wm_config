#!/bin/bash

MON="eDP-1"    # Discover monitor name with: xrandr | grep " connected"

if [ -z "$1" ]; then
    printf "Options to give are: 1) up 2) down\n"
    exit 1
fi

step=0.1

CurrBright=$( xrandr --verbose --current | grep ^"$MON" -A5 | tail -n1 | awk '{print $NF}')
if [ "$1" = "down" ]; then
    SetBright=$(echo "scale=1; ((${CurrBright} - ${step}) * 10) * 100 / 100" | bc)
else
    SetBright=$(echo "scale=1; ((${CurrBright} + ${step}) * 10) * 100 /100" | bc)
fi


if (( $(echo "$SetBright > 10.0" | bc -l) )) || (( $(echo "$SetBright < 1.0" | bc -l) )); then
    printf "Brightness is already max or min: ${SetBright}\n"
    exit 1
fi

SetBright=$(echo "scale=1; ${SetBright} / 10" | bc)

xrandr --output "$MON" --brightness "$SetBright"   # Set new brightness
echo "$SetBright"
# # Display current brightness
# printf "Monitor $MON Brightness: ${SetBright}\n"
