#!/bin/bash

# Kill any existing Conky instances
killall conky

# Wait for the desktop to fully load (3 seconds)
sleep 3

# Use the anime themed config
conky -c $HOME/.config/conky/anime-conky.conf &

# If you prefer the standard config, comment the line above and uncomment this line:
# conky -c $HOME/.config/conky/conky.conf &

exit 0 