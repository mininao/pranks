#!/bin/bash
export CACA_DRIVER=ncurses
youtube-dl -f 17 https://www.youtube.com/watch\?v=dQw4w9WgXcQ -o - | mplayer -cache 8192 -vo caca -framedrop -
