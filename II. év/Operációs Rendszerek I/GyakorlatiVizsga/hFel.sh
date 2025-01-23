#!/bin/bash

interactive=false

if [[ "$1" == "-i" ]]; then
	interactive=true
	shift
fi

inputFolder="$1"
outputFolder="$2"

if [[ ! -d  "$inputFolder" || ! -d "$outputFolder" ]]; then
	echo "Input or Output not a folder!"
	exit 1
fi

for file in "$inputFolder"/*.jpg; do
	if [ ! -e "$file" ]; then
		echo "No jpg files in directory"
		continue
	fi

	# levágjuk a .jpg végződést a fájlnévből
	fileName=$(basename "$file" .jpg)
	newFile="$outputFolder/$fileName.png"
	
	if $interactive; then

		dimension=$(identify -format "%w%h" "$file")
		width=$(echo "$dimension" | cut -dx -f1)
		height=$(echo "$dimension" | cut -dx -f2)

		read -p "Add meg az új szélességet (Enter lenyomása esetén az eredeti marad): " newWidth
		read -p "Add meg az új magasságot (Enter lenyomása esetén az eredeti marad): " newHeight

		if [[ -z "$newWidth" || -z "$newHeight" ]]; then
			newWidth=$width
			newHeight=$height		

		elif [[ -z "$newWidth" ]]; then
			newHeight=$((newWidth * height / width))

		elif [[ -z "$newHeight" ]]; then
			newWidth=$((width * newWidth / height))
		fi

		if magick "$file"  -resize "$newWidth"x"$newHeight" "$newFile"; then
			echo "Successfully converted and changed resolution"
		else echo "Something went wrong!"

		fi

	else
		if magick "$file" "$newFile"; then
			echo "Successfully converted!"
		else echo "Something went wrong!"
		fi
	fi
done

