#!/bin/bash

echo "argv[0]=$0"
echo "argv[1]=$1"

func() {
	local argv=$1
	echo $argv
}

func world
