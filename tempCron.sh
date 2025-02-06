#!/bin/bash
TEMP=$(vcgencmd measure_temp | grep -o -E '[[:digit:]]*\.[[:digit:]]*')
OVER=$(expr $TEMP \> 70)
if [ $OVER -eq 1 ]
then
  cd /home/dan/src/status
  ./sendMessage.sh "Temperature high! ($TEMP)"
fi
