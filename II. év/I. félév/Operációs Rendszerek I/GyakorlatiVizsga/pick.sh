#!/bin/bash
#Masoljunk at fajlokat amiben egy szo minimum N-szer szerepel
#tesztkomment

inputFolder="$1"
outputFolder="$2"
numOfAppearance="${3?=1}"
response=""
wordCount=0

if [ ! "$#" -ne 2 ]; then
	echo "Két paraméterre van szükségem!"
	exit 1
fi

if [ ! -d "$inputFolder" ]; then
	echo "Input is not a folder!"
	exit 2
fi

if [ ! -d "$outputFolder" ]; then
	mkdir ./"$outputFolder"
	echo "Output folder has been created"
fi

if [ "$(ls -A "$outputFolder")" ]; then
	read -p "Can I empty out the output folder? (y/n)" response

	if [[ "$response" == "y" || "$response" == "Y" ]]; then
		rm "$outputFolder"/*.txt
	elif [[ "$response" == "n" || "$response" == "N" ]]; then
		exit 2
	fi
fi

for file in "$inputFolder"/*.txt; do
	wordCount=$(egrep -o -w "$outputFolder" "$file" | wc -l)
	if [[  "$wordCount" -ge "$numOfAppearance"]]; then
		cp "$file"  "$outputFolder"/
	fi
done
