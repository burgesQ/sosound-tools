#! /bin/bash

adb connect "$1"
ok=`adb devices | grep "$1"`
echo "ok look like : [$ok]"
if [ -z "$ok" ]; then
    echo "can't run adb connect [$CONNECT_IP], are you sure that you are in tcpip mode ?"
    exit 6
elif [ "$ok" == "" ]; then
    echo cacaporout
    exit 7
elif [ "$ok" != "$1:5555	device"]; then
     echo ici lo lo
     exit 8
else
    echo ok
fi
