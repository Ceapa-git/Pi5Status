#!/bin/bash
cd /home/dan/src/status
./sendMessage.sh "Pi5 starting on $(hostname -I | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}')!"
