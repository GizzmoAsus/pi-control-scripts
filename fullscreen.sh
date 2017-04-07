#!/bin/bash

# This script will put Chome into fullscreen mode

export DISPLAY=":0"
windowid=$(xdotool search --onlyvisible --class chromium | head -1)
xdotool windowactivate ${windowid}
xdotool key F11
