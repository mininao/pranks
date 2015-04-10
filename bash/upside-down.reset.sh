#!/bin/bash

# Get the name and put it in the variable "DEVICES"
# See the file "upside-down.sh"
DEVICE=$(xrandr -q | awk '/primary/ {print $1; exit;}')
# Put the screen back to normal orientation
/usr/bin/xrandr --output $DEVICE --orientation normal
