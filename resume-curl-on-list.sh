#!/bin/sh
while read line
do
	until \
    curl -C - -o ${line##*/} $line; do 
    	sleep
	done
done < ./list.txt
