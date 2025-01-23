#!/bin/bash

file=$1

if [ $# -ne 1 ]; then
	echo "This script requires one parameter!"
	exit 1
fi

if [ ! -f "$1" ]; then
	echo "Not a file!"
	exit 2
fi

if [ ! -r "$1" ]; then
	echo "File is not readable"
	exit 3
fi

longest_line=""
current_line=0
line_number=0
line_length=0

# IFS - úgy adja vissza a sort ahogy a fájlban szerepel
while IFS= read -r line; do
	((current_line++))
	line_length=${#line}

	if ((line_length > ${#longest_line})); then
		longest_line=$line
		line_number=$current_line
	fi
done < "$file"

echo "Longest line: $longest_line"
echo "Line number: $line_number"


