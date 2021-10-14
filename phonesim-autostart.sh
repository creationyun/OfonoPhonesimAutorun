#!/bin/sh

echo "Running ofono-phonesim... (1 second)"
ofono-phonesim -p 12345 /usr/share/phonesim/default.xml &
sleep 1
/usr/bin/python3 enable-online-modem.py
