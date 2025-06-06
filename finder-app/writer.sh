#!/bin/bash

if [ $# -eq 2 ]; then
	writefile=$1
        writestr=$2
	if [ ! -d "$writefile" ]; then
		# ceate Dir
		mkdir -p "$(dirname "$writefile")"
	fi
	echo "$writestr" > "$writefile"
	if [ ! -f "$writefile" ]; then
	# file could not be created
    		exit 1
    	else
    		echo "Folder is created"
	fi
else
    echo "please enter 2 argumeents"
    exit 1
fi
