#!/bin/bash

#Fusson a script ameddig a fajl checksum-ja meg nem valtozik
start_time=$(date +%s)
time=1
while (($# > 0)); do
	case "$1" in
		-t)  shift
		     if [[ -z "$1" || ! "$1" =~ ^[0-9]{1,3}$ ]]; then
			echo "No number passed or longer than 3 digits, defaulting to 1"
			time=1
		    else
		     time="$1"
	    	    fi
		    shift;;
		*) break;;
	esac
done

file="$1.txt"

if [[ ! -f "$file" ]]; then
	echo "No valid files"
	exit 1
fi

checksum=$(md5sum "$file")
echo "$(date '+%F %T') start"
while true; do
	new_checksum=$(md5sum "$file")
	if [[ "$checksum" != "$new_checksum" ]]; then
		echo "$(date '+%F %T') módosult: $file"
		break
	fi
	sleep $time
done

end_time=$(date +%s)

result=$((end_time - start_time))

echo "Script ran for $result seconds"
