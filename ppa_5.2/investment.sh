#!/bin/bash

sum=0

while read -r hash; do
    filename=$(grep "$hash" map | cut -d' ' -f2)
    amount=$(grep "INVESTMENT" "$filename" | cut -d'$' -f2)
    sum=$((sum + amount))
done < result

echo $sum
