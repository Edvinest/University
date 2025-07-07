#!/bin/bash

file=$1
searchedChar=$2
count=0

if [ $# -ne 2 ]; then
    echo "Script requires two parameters: a file name and a character you are looking for"
    exit 1
fi

if [ ! -f "$file" ]; then
    echo "File doesn't exist!"
    exit 2
fi

for line in $(cat "$file"); do
    for ((i = 0; i < ${#line}; i++)); do
        if [ "${line:$i:1}" == "$searchedChar" ]; then
            ((count++))
            fi
        done
    done

echo "A keresett karakter: '$searchedChar', $count alkalommal található meg a fájlban"