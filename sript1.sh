#!/bin/bash
THRESHOLD=10
USAGE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')

if [ $USAGE -gt $THRESHOLD ]; then
    echo "Disk space usage is above $THRESHOLD% on root file system" | mail -s "Disk Space Alert" user@example.com
fi

