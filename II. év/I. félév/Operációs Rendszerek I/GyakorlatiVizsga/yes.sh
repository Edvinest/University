#!/bin/bash

directory=$1
displayRes=$2

if [ $# -ne 2 ]; then
    echo "Two parameters are required: a directory, number of results to display"
    exit 1
fi

if [ ! -d "$directory" ]; then
    echo "File is not a directory"
    exit 2
fi

if [ ! -r "$directory" ]; then
    echo "Directory can't be opened"
    exit 3
fi

for file in "$directory"/*; do
    if [ -f "$file" ]; then
        echo "$file - $(wc -c "$file") bytes/characters"
    fi
done | sort -k3 -nr | head -n "$displayRes"