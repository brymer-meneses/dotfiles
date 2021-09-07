#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
sleep 1
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
polybar workspaces &
polybar time &
polybar system &


