#!/bin/bash

#script to get information about author, date submitted and TA for all lab report .txt files

find . -name "R_*.txt" | while read line; do
	echo $line;
	sed -n '3,6p' $line;
	#add a line break
	echo $'\r';
done
