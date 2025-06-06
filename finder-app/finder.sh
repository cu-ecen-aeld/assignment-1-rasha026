#!/bin/bash
if [ $# -eq 2 ]; then
	path=$1
        word=$2
	if [ -d "$path" ]; then
		numFiles=$(find "$path" -type f | wc -l)
		numLines=$(grep -r "$word" "$path" | wc -l)
		echo "The number of files are $numFiles and the number of matching lines are $numLines"
	else
		echo "path is wrong"
    		exit 1
	fi
else
    echo "please enter 2 argumeents"
    exit 1
fi
