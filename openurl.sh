#!/bin/bash

# This script will put launch a new Chrome tab and open Confluence to the
# L3 Support Dashboard

export DISPLAY=":0"

# Capture credentials for the target site
echo -n "Please enter the URL for the page you wish to visit: "
read siteurl
echo
echo -n "Does the site require a authentication? (y/n): "
read siteauth

if [[ "${siteauth}" == "y" ]]; then

	echo -n "Please enter the username/email: "
	read username
	echo -n "Please enter the password: "
	read -s password
	echo
fi


windowid=$(xdotool search --onlyvisible --class chromium | head -1)
xdotool windowactivate ${windowid}

# Go to siteurl and auth if required
xdotool key "ctrl+t"
xdotool sleep 5
xdotool type "${siteurl}"
xdotool key "Return"
if [[ "${siteauth}" == "y" ]]; then
	xdotool sleep 5
	xdotool type "${username}"
	xdotool key "Tab"
	xdotool type "${password}"
	xdotool key "Return"
	xdotool sleep 10
	xdotool key "ctrl+l"
	xdotool sleep 2
	xdotool type "${siteurl}"
	xdotool key "Return"
fi
