#!/bin/bash

filepath=$( realpath "$0"  )
dir=$( dirname "$filepath" )
option=$1

echo "Running ofono-phonesim... (1 second)"
/usr/bin/ofono-phonesim -p 12345 /usr/share/phonesim/default.xml &
/usr/bin/python3 $dir/enable-online-modem.py

if [ "${option}" == "--service" ]; then
    sleep infinity
fi
