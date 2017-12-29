#!/bin/bash

echo "Fuck adobe is running..."

ps -ef | grep -i "adobe" | awk '{print $2}' | while read line; do
    if [ $$ == ${line} ]
    then
        echo "Done! Have a nice day"
        exit 1
    fi
    echo "Killing ${line}"
    sudo kill -9 ${line} > /dev/null 2>&1
done
