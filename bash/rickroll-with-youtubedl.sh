#!/bin/bash
youtube-dl https://www.youtube.com/watch\?v=dQw4w9WgXcQ -o - | mplayer -novideo -cache 8192 -
