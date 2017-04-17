#!/bin/bash

# This script will switch between 2 tabs in Chromium

export DISPLAY=":0"
windowid=$(xdotool search --onlyvisible --class chromium | head -1)
xdotool windowactivate ${windowid}
xdotool key ctrl+Tab
