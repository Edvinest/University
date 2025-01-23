#!/bin/bash

# Trap arra az esetre ha megszakításnál valamit futtatni akarunk
trap myFunction SIGINT # bármennyi signal-t felsorolhatunk egymás után, a sigint a CTRL+C miközben fut a szkript

# ha egy function-t használsz a trapnél kevesebb eséllyel lesz hiba
myFunction(){
	endTime=$(date +"%S")
	echo "Ennyi másodpercig futott a szkript: $((endTime - startTime))"
	exit
}

seconds=2
startTime=$(date +"%S")

# egy fajta megoldás bármennyi mennyiségű argumentumra
while [ "$1" != "" ]; do
    case $1 in
        -t) shift
            seconds=$1
            shift
            break;;
        *) echo "invalid argument"
            exit 2 ;;
    esac
done

if [[ ! $seconds =~ ^[0-9]+$ ]]; then
    echo "A másodpercnek egész és pozitív számnak kell lennie!"
    exit 1
fi

dir=$1

if [[ -z "$dir" || ! -d "$dir" ]]; then
    echo "Directory not provided or not a directory"
    exit 3
fi

mkdir -p ok szemet

# Minták az ISBN számokra, a |  OR művelet
patterns="(^[0-9]{13}$)|(^[0-9]{3}-[0-9]{9}-[0-9]$)|(^[0-9]{10}$)|(^[0-9]{9}-[0-9]$)"

while true; do

    # a file itt az iterátorunk lesz
    for file in "$dir"/*.txt; do
	
	# ellenőrizzük, hogy a file iterátor valóban egy fájt
	# ugyanakkor a file típusában valahol szerepel az, hogy text
	# ez használható akkor is ha png, jpeg vagy egyéb formátumokra egyezünk
	# a file kiterjesztése nem feltétlen egyezik a típusával

        if [[ -f $file ]]  && file "$file" | grep -q "text" ; then
	
            # a grep -o csak a találatokat adja vissza, ezeket tároljuk változóban
            matches=$(grep -o "$patterns" "$file")

            # ha a matches változó nem üres
            if [ ! -z "$matches" ]; then
                timestamp=$(date +"%H:%M:%S")
                # Az IFS arra szolgál, hogy (jelen esetben a space-eknél válassza el a stringeket
		# ha pl vesszőt teszel akkor a vesszőknél választja
                while IFS= read -r match; do
                    echo "$timestamp $file ${match//-}" | tee -a ../isbn.txt # a tee -a az isbn.txt végére szúrja be az új adatot
			# a //- azt jelenti, hogy kiveszi a kötőjeleket az isbn számokból
                done <<< "$matches"
		# a <<< azt jelenti, hogy az input amit kap az egy string
		# tehát a matches egy sztring, amit space-enként feldarabol az IFS és a match-ben tárol
		# ergó egy iterátor
        	mv "$file" ../ok/

            fi
        else
            mv "$file" szemet
        fi

    done

    sleep $seconds
done
