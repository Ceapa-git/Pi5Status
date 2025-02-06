#!/bin/bash
if [ "$#" -eq 1 ]
then
  export $(xargs <.env)

  curl \
    -H "Content-Type: application/json" \
    -d "{\"content\":\"$1\"}" \
    $DISCORD_WEBHOOK
else
  echo "Usage:"
  echo "sendMessage.sh \"message\""
fi
