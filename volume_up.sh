#!/bin/bash

pactl set-sink-volume `pactl list | grep Sink | head -n 1 |awk -F" " '{print substr($2, 2, length($2))}'` +5%
