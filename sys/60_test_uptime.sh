#!/bin/bash

hostname=`hostname`
date=`date +%s`
value=`echo $RANDOM|cut -c 1-2`

echo "[{\"endpoint\": \"$hostname\", \"tags\": \"\", \"timestamp\":$date, \"metric\": \"sys.test\", \"value\": $value, \"counterType\": \"GAUGE\", \"step\": 60}]"
