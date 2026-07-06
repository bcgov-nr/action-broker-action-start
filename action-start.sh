#!/usr/bin/env bash

echo "===> Action start"

# Use saved action token to start it (ACTION_TOKEN holds the name of the env var containing the token)
RESPONSE=$(curl -s -X POST $BROKER_URL/v1/intention/action/start -H 'X-Broker-Token: '"${!ACTION_TOKEN}"'')
code=$?

if [ "$code" != "0" ]; then
    echo "Exit: Error detected ($code)"
    echo $RESPONSE | jq '.'
    exit 1
fi

echo "Success"
