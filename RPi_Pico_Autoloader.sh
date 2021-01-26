#!/bin/bash

#Fully qualified path of the raspberry pi when it appears as a drive
#The one shown is default for a desktop version of Ubuntu 20.04
PI_LOAD_DIR="/media/ubuntu/RPI-RP2"

#Fully qualified path of the .uf2 to load
#The example is for the blink binary generated when following the tutorial
UF2_FILE="/home/ubuntu/pico/pico-examples/build/blink/blink.uf2"

#How long between checks
SLEEP_TIME=5

echo "Raspberry Pi Pico Autoloader By Conor Shore 2020"
echo "Minimise this window, it will run in the background"

while true
do

    if [ -d "$PI_LOAD_DIR" ]; then 
        echo "Pi Pico detected!"
        cp $UF2_FILE $PI_LOAD_DIR
    fi
    sleep $SLEEP_TIME

done
