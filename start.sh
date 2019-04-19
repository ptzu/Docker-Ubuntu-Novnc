#!/bin/bash
export DISPLAY=:1
Xvfb :1 -screen 0 $SCREEN_SIZE &
sleep 5

openbox-session &
sleep 2

x11vnc -display :1 -forever -bg -ncache 10 -rfbport 5902 &
cd /root/noVNC && ./utils/launch.sh --listen 6080 --vnc localhost:5902
