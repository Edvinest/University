#!/bin/bash

usage() {
  echo "használat: $0 könyvtár1 könyvtár2"
  exit 1
}

if [[ $# -ne 2 ]]; then
  usage
fi

dir1=$1
dir2=$2

if [[ ! -d $dir1 ]]; then
  echo "a $dir1 könyvtár nem elérhető"
  exit 2
fi

if [[ ! -d $dir2 ]]; then
  echo "a $dir2 könyvtár nem elérhető"
  exit 2
fi

# maxdepth mélységben keresünk olyan fájlt a könyvtárban
# aminek a típusa fájl és megnézzük a sorok hosszát
count1=$(find "$dir1" -maxdepth 1 -type f | wc -l)
count2=$(find "$dir2" -maxdepth 1 -type f | wc -l)

echo "fájlok száma $dir1 : $count1"
echo "fájlok száma $dir2 : $count2"

identical_count=0
updated_count=0

for file1 in "$dir1"/*; do
  if [[ -f $file1 ]]; then
    filename=$(basename "$file1")
    # a basename a fájl nevét adja vissza
    file2="$dir2/$filename"

    if [[ -f $file2 ]]; then
      ((identical_count++))
      # (())-ben matematikai műveleteket tudsz elvégezni

      # ot - older than
      if [[ $file2 -ot $file1 ]]; then
        echo "$file2 idősebb mint $file1"
        echo -n "Felülírás?[i/n]"
        read -n 1 answer
        echo

        if [[ $answer == "i" ]]; then
          cp "$file1" "$file2"
          echo "'$file2' -> '$file1'"
          ((updated_count++))
        fi
      fi
    fi
  fi

done

echo "azonos nevű fájlok száma: $identical_count"
echo "felülírt fájlok száma d2-ben : $updated_count"
