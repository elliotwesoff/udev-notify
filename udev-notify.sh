#!/bin/sh
#
# udev-notify.sh

# tails the systemd journal for udev events and triggers notify-send messages
# (for desktop notifications).

udev_identifier="$1"

if [ -z "$udev_identifier" ]; then
    echo "Usage: $0 [udev_identifier from udev rules RUN script]" >&2
    exit 1
fi

journalctl -f -o cat -t "$udev_identifier" | while read -r line; do
    notify-send --urgency=normal udev "$line"
done
