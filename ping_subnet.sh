#!/bin/bash
for i in {0..255}
do
    ping -c 1 172.16.17.$i > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Server 172.16.17.$i is up and running."
    else
        echo "Server 172.16.17.$i is unreachable."
    fi
done

