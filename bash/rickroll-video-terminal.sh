export CACA_DRIVER=slang
wget $(youtube-dl -f 17 --get-url https://www.youtube.com/watch\?v\=dQw4w9WgXcQ) -O - |mplayer -cache 8192 -vo caca -framedrop -

