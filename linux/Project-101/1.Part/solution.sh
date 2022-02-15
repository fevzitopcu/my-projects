#! /bin/bash

if [[ ! -f $1 ]]
then
	echo "please type a file"
	exit
fi

cat event_history.csv | grep serdar | grep Terminate | grep -Eo "i-[a-zA-Z0-9]{17}" | sort -u > result.txt
