#!/bin/bash

cursum=0
elffile="./calories.txt"

while read calories; do
	if [ -z $calories ]; then
		echo "$cursum"
		cursum=0
	else
		cursum=$(($cursum + $calories))
	fi
done < "$elffile" | sort -n | tail -n3 | awk '{s+=$1} END {print s}'

