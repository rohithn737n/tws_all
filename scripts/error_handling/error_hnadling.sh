#!/bin/bash

#set -e #Stop the script whenever an error occurs
<<usage
make a directory
usage

mkdir josh $>/dev/null  || mkdir -p josh
#|| - If first part works then fine otherwise second part after pipe would work

echo "Do production work"
