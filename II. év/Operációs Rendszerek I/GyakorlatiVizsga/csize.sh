#!/bin/bash

directory=$1
numBlock=0
byteSum=0

if [ $# -ne 1 ]; then
    echo "Script requires one parameter: directory"
    exit 1
fi

if [ ! -d "$directory" ]; then
    echo "Not a valid directory"
    exit 2
fi

for file in "$directory"/*.txt; do
    if [ -f "$file" ]; then
        blockCount=$(stat --printf="%b" "$file") 
        byteCount=$(stat --printf="%s" "$file")
        echo "$file - blokk száma: $blockCount, $byteCount byte"
    
        numBlock=$((numBlock + blockCount))
        byteSum=$((byteSum + byteCount))
    fi
done

echo "Total number of blocks: $numBlock, sum of bytes: $byteSum"