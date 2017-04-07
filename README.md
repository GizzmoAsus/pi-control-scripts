# pi-control-scripts
A series of different scripts for handling the office PI's

## Background
These scripts were developed to control chromeium-browser on a 
Raspberry pi without having to plug in a keyboard and mouse. They 
can also be added to cron to have the browser behave automatically.

## Dependencies
The only dependency for this script is that xdotool is installed on 
the device

## The Scripts
### fullscreen.sh
This script will trigger the F11 fullscreen command on the current 
Chromium tab

### refresh.sh
This script will trigger a reload of the current Chromium tab

### switchtab.sh
This script will trigger the ctrl+Tab command to switch between 2 
tabs in Chromium
