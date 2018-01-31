#!/bin/bash
FILE=$1

if [[ ${FILE%.hex} = $FILE ]]; then
	echo "is not the .hex file"
else
	echo "is the .hex file"
fi
