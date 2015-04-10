#!/bin/bash

# Get the name and put it in the variable "DEVICES"
# See the file "upside-down.sh"
DEVICE=$(xrandr -q | awk '/primary/ {print $1; exit;}')

xrandr --output $DEVICE --gamma 1:1:1
