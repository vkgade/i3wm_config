#!/bin/bash

SND_PROFILE=`pacmd list-cards | grep "output:analog.* available: unknown" | tail -n1 | awk -F" " '{print substr($1, 1, length($1) -1)}'`
echo "SND_PROFILE: $SND_PROFILE"
if [ -z $SND_PROFILE ]; then
    echo "No sound card profile found!"
else
    pacmd set-card-profile 0 $SND_PROFILE
    echo "Changed the sound profile"
fi
