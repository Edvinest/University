#!/bin/bash

row=1
num=1

# a : a betú után azt jelenti, hogy az 
# argumentum mellé jön még egy paraméter

# ha azt írod, hogy "rn" akkor önmagukban csinálnának valamit
while getopts "r:n:" opt; do
  case $opt in
  r)
    row=$OPTARG
    ;;
  n)
    num=$OPTARG
    ;;
  *)
    echo "Invalid option: -$OPTARG"
    exit 1
    ;;
  esac
done

shift $((OPTIND - 1))

dir=${1:-.}
word=$2

if [[ ! $row =~ ^[0-9]$ ]]; then
  echo "-r must be an integer"
  exit 2
elif [[ ! $num =~ ^[0-9]$ ]]; then
  echo "-n must be an integer"
  exit 3
fi

if [[ -z $word ]]; then
  echo "You must enter a word"
  exit 4
fi

for file in $dir/*.txt; do
  if [[ -f $file ]]; then
    # ez a megoldás ugyanazt csinálja, mint a grep-pes megoldás
    file_type=$(file --mime-type -b "$file")
    if [[ $file_type != "text/plain" ]]; then
      echo "Skipping $file, not a text file"
      continue
    fi
    word_count=0
    line_num=0

    while IFS= read -r line && [[ $line_num -lt $row ]]; do
      ((line_num++))
      word_count=$((word_count + $(grep -o -w "$word" <<<"$line" | wc -l)))
    done <"$file"

    if [[ $word_count -ge $num ]]; then
      echo "$file : $word_count"

    else
      echo "$file : less than required"
    fi
  fi
done
