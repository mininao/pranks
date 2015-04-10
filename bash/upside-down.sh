#!/bin/bash

# Get the name and put it in the variable "DEVICES"
#
# How it works:
#	The command `xrandr -q` outputs the current state of the screen system.
#	One example of output is:
#
#		Screen 0: minimum 8 x 8, current 1920 x 1080, maximum 32767 x 32767
#		eDP1 connected primary (normal left inverted right x axis y axis) 521mm x 293mm
#		   1920x1080     60.05*+
#		   1400x1050     59.98
#		   1280x1024     60.02
#		   1280x960      60.00
#		   1024x768      60.00
#		   800x600       60.32    56.25
#		   640x480       59.94
#		DP1 disconnected (normal left inverted right x axis y axis)
#		HDMI1 disconnected (normal left inverted right x axis y axis)
#		HDMI2 disconnected (normal left inverted right x axis y axis)
#		VGA1 disconnected (normal left inverted right x axis y axis)
#		VIRTUAL1 disconnected (normal left inverted right x axis y axis)
#
#	Here we can see that the screen used by the victim is names eDP1, on the
#	same line "primary" is displayed.
# 	And so, to isolate the name of the display, the output of this commad is
#	piped to the command `awk '/primary/ {print $1; exit:}'` which will
#	select all lines that contains "primary" (`/primary/`) and print the first
#	word (`$1`) of this line.
DEVICE=$(xrandr -q | awk '/primary/ {print $1; exit;}')

# Invert the screen. For more informations, see `man xrandr`
/usr/bin/xrandr --output $DEVICE --orientation inverted
