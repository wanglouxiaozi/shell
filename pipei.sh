#!/bin/bash

file=$2
if [[ ${file%.hex} = $file ]]; then
	echo ${file%.hex}
	echo "匹配到符合条件的"
else
	echo "未匹配到符合条件的"
fi
