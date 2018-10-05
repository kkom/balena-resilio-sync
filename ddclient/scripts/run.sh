#!/bin/sh

# Exit if any command fails
set -e

# unless the container is configured to actually start, it will exit immediately
if [ ! ${START_CONTAINER} -eq 1 ]; then
    exit 0
fi

# Replace values in the configuration file
./replace.sh ddclient.conf.template > /config/ddclient.conf

# Print the configuration file for debugging purposes
cat /config/ddclient.conf

# Run the Dynamic DNS client
ddclient -daemon=300 -foreground -noquiet
