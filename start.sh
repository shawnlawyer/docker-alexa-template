#!/bin/bash
nginx
export TERM=xterm
screen -dmS APP bash -c 'python3 app.py'
tail -f /dev/null