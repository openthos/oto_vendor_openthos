#!/system/bin/sh

OTO_UPPER=/mnt/tmp/overlay/upper
OTO_DATA_ORIG=/mnt/tmp/overlay/data_orig

if [ -f "/mnt/tmp/overlay/savedata" ] ; then
    mount | grep "oto_overlaydata.*/data"
    if [ $? -eq 0 ] ; then
        mount | grep "oto_overlay.*tmpfs"
        if [ $? -eq 0 ] ; then
            cp -av ${OTO_UPPER}/* ${OTO_DATA_ORIG}/
        fi
    fi    
fi

