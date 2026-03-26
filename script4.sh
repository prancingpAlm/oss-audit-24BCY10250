#!/bin/bash
# script4: log file analyser
# author: nitya gopalakrishnan
#description: counts occurences of a keyword in a log file
#taking command like arguments

LOGFILE=$1
KEYWORD=${2:-error} #default
#check if file is provided
if [ -z "$LOGFILE" ]; then
	echo "Usage: $0 <logfile> [keyword]"
	exit 1
fi
#check if file exists
if [ ! -f "$LOGFILE" ]; then
	echo "Error: File $LOGFILE not found"
	exit 1
fi

#initialise counter
COUNT=0
#read file line by line
while IFS= read -r LINE; do
	#check if line has keyword
	if echo "$LINE" | grep -iq "$KEYWORD"; then
		COUNT=$((COUNT + 1))
	fi
done < "$LOGFILE"

#results
echo "File : $LOGFILE"
echo "Keyword : $KEYWORD"
echo "occurences : $COUNT"

#last 5 matching lines
echo "Last 5 lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
