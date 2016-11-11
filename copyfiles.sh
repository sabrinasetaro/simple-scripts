#!/bin/bash -e

#Script to copy all files from list to new folder

#error handling
set -e
#check if user entered file and folder
if [ $# -lt 2 ]; then
	cat <<- EOM
	Script to copy all files from list to new folder
	Usage: copyfiles.sh list folder
	EOM
#run the program: read through file and catch copy corresponding file from current directory to specified folder
else
	cat "$1" | xargs -I {} cp {} "$2"
fi
