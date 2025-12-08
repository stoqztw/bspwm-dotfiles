#!/bin/bash

# Kill previous bars
killall -q polybar

#wait until they are closed
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch main bar 
polybar mybar &
