#!/bin/bash
#Irassuk ki a kommenteket egy fajlbol a bin/bash kivetelevel

file="$1"

if [ ! -f "$file" ]; then
	echo "Not a file!"
	exit 1
fi

while IFS= read -r line; do
	if [[ "$line" =~ ^# && "$line" != "#!/bin/bash" ]]; then
		echo "$line"
	elif [[ ! "$line" =~ ^# ]]; then
		break
	fi
done < "$file"
