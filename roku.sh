#!/bin/bash

ip="$1"

while true; do
clear
echo "ip is: $ip"
cat << EOF
    Menu:
        q - VolumeUp
        a - VolumeDown
        z - VolumeMute

        v - PowerOff
        r - PowerOn

        w - Home
        d - Select
        s - Left
        f - Right
        e - Up
        c - Down
        x - Back

        1 - InputHDMI1
        2 - InputHDMI2
        3 - InputHDMI3
        
        / (or ctrl+c) - exit
EOF

    read -rsn1 in
    
    if [ $in == 'q' ]; then
        curl -d '' "http://$ip:8060/keypress/VolumeUp"
    fi
    if [ $in == 'a' ]; then
        curl -d '' "http://$ip:8060/keypress/VolumeDown"
    fi
    if [ $in == 'z' ]; then
        curl -d '' "http://$ip:8060/keypress/VolumeMute"
    fi

    if [ $in == 'w' ]; then
        curl -d '' "http://$ip:8060/keypress/Home"
    fi
    if [ $in == 'd' ]; then
        curl -d '' "http://$ip:8060/keypress/Select"
    fi
    if [ $in == 's' ]; then
        curl -d '' "http://$ip:8060/keypress/Left"
    fi
    if [ $in == 'f' ]; then
        curl -d '' "http://$ip:8060/keypress/Right"
    fi
    if [ $in == 'e' ]; then
        curl -d '' "http://$ip:8060/keypress/Up"
    fi
    if [ $in == 'c' ]; then
        curl -d '' "http://$ip:8060/keypress/Down"
    fi
    if [ $in == 'x' ]; then
        curl -d '' "http://$ip:8060/keypress/Back"
    fi

    if [ $in == 'v' ]; then
        curl -d '' "http://$ip:8060/keypress/PowerOff"
    fi
    if [ $in == 'r' ]; then
        curl -d '' "http://$ip:8060/keypress/PowerOn"
    fi

    if [ $in == '1' ]; then
        curl -d '' "http://$ip:8060/keypress/InputHDMI1"
    fi
    if [ $in == '2' ]; then
        curl -d '' "http://$ip:8060/keypress/InputHDMI2"
    fi
    if [ $in == '3' ]; then
        curl -d '' "http://$ip:8060/keypress/InputHDMI3"
    fi
    
    if [ $in == '/' ]; then
        clear
        exit 0
    fi

done;
