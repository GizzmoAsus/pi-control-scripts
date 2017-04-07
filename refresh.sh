#!/bin/bash

# This script will refresh the current Chromium tab

export DISPLAY=":0"
windowid=$(xdotool search --onlyvisible --class chromium|head -1)
xdotool windowactivate ${windowid}
xdotool key ctrl+F5
