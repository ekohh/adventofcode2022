#!/bin/bash

sum=0
cursum=0

elf="./calories.txt"

while read calories; do
	if [ -z $calories ];
	then
		if [ "$sum" -gt "$cursum" ]; then cursum=$sum ;fi
		sum=0
	else
		sum=$(($sum + $calories))
	fi
done < "$elf"

echo "$cursum"

