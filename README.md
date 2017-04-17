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

### openurl.sh
This script will open the passed in URL in a new tab within the
browser. If the site requires authentication to view the pages then
you can choose to enter the username/email and password for it to
authenticate against. At present, it only supports sites that focus
the username box when you hit the login screen, better detection for 
this will come in a future release.
