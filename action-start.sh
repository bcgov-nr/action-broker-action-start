#!/usr/bin/env bash

echo "===> Action start"

# Use saved action token to start it
RESPONSE=$(curl -s -X POST $BROKER_URL/v1/intention/action/start -H 'X-Broker-Token: '"$ACTION_TOKEN"'')

if [ "$(echo $RESPONSE | jq '.error')" != "null" ]; then
    echo "Exit: Error detected"
    echo $RESPONSE | jq '.'
    exit 1
fi

echo "Success"
