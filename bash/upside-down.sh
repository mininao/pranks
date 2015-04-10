#!/bin/bash
DEVICE=`xrandr -q|awk '/ connected/{print $1; exit;}'`
/usr/bin/xrandr --output $DEVICE -o inverted

