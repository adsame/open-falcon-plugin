#!/bin/bash

date=`date -d -10min +%F' '%H:%M`

dual=`cat /tmp/dual|tail -1 |awk '{print $1}'`




if [ $dual -gt 0 ];then
  echo dualview is ok > /dev/null
  echo "[{\"endpoint\": \"$hostname\", \"tags\": \"\", \"timestamp\":$date, \"metric\": \"dual-learner\", \"value\": 1, \"counterType\": \"GAUGE\", \"step\": 60}]"
else
  echo "[{\"endpoint\": \"$hostname\", \"tags\": \"\", \"timestamp\":$date, \"metric\": \"dual-learner\", \"value\": 0, \"counterType\": \"GAUGE\", \"step\": 60}]"
fi