#!/bin/bash

#set warning threshold

THRESHOLD=85

echo "=============================="
echo "      Disk Usage Checker      "
echo "=============================="
echo "df minus h = "
df -h
echo  "============================="
USAGE=$(df -h / | tail -1 | grep -o '[0-9]\+%' | tr -d '%')
echo "==============================="
echo "Current disk usage = ${USAGE} %"
echo "==============================="


if [ "$USAGE" -ge $THRESHOLD ]; then
	echo "WARNING: Disk space above ${THRESHOLD} %"
else
	echo "Disk usage is normal and below ${THRESHOLD}"
fi


