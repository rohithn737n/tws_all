#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please pass an argument"
	echo "Usage: ./if_file_exists.sh <file_path>"
	exit 1
fi

if [ -f $1 ];
then
	echo "File exists"
else
	echo "File does not exist"
fi
