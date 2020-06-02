#!/bin/bash

mapperfile=/dev/mapper/vykerenc

if [ "$#" -ne 3 ]; then
    echo "Will need device name like sdb, sdc as first arg 1"
    echo "Will need the mount dir path as arg 2"
    echo "Will need a flag to 0 or 1 (umount=0 mount=1) as arg 3"
    exit 1
fi

device="/dev/$1"

is_device_mounted() {
    mounted=$(df | tail -n +2 | awk '{print $1}')
    okay=1
    
    while IFS= read -r m; do
        if [ "$mapperfile" = "$m" ];then
            okay=0
            break
        fi
    done <<< "$mounted"
    return "$okay"
}

device_exists() {
    fdisk -l $1 > /dev/null 2>&1
    return "$?"
}

is_device_mounted "$device"
is_mounted="$?"
if [ "$is_mounted" -ne 0 ]; then
    if [ "$3" -eq 0 ]; then
        echo "Device is already not mounted: $device"
        exit 1
    fi        
else
    if [ "$3" -eq 1 ]; then
        echo "Device is already mounted, busy: $device"
        exit 1
    fi
fi

device_exists "$device"
if [ "$?" -ne 0 ]; then
    echo "No device by name: $device"
    exit 1
else
    echo "Device is okay: $device"
fi

open_vyker() {
    cryptsetup luksOpen "$1" vykerenc
}

mount_vyker() {
    if [ -d $2 ]; then
        mount "$mapperfile" $2
    else
        mkdir -p $2
        mount "$mapperfile" $2
    fi
}

umount_vyker() {
    if [ -d $1 ]; then
        umount $1
    fi
}

close_vyker() {
    cryptsetup luksClose vykerenc
}

if [ "$3" -eq 1 ]; then
    echo "Trying to mount $device on $2"
    open_vyker "$device"
    if [ "$?" -eq 0 ]; then
        mount_vyker "$device" "$2"
        if [ "$?" -ne 0 ]; then
            close_vyker
        else
            echo "Mount success: $2"
            cd $2
            ls
        fi
    fi
    
fi

if [ "$3" -eq 0 ]; then
    echo "Trying to umount $device on $2"
    umount_vyker "$2"
    close_vyker
fi

