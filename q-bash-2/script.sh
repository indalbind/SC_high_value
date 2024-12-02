#!/bin/bash

cat > data
sed -i '/^Age,/d' data
sort -t, -k3 data -o data
mapfile -t heartrates < <(cut -d, -f3 data)
lines=${#heartrates[@]}
if [ $((lines % 2)) -eq 0 ]; then
    Q1=$((lines/4))
    Q3=$((3*lines/4))
else
    Q1=$(( (lines+1)/4 ))
    Q3=$(( 3*(lines+1)/4 ))
fi
Q1=${heartrates[$Q1]}
Q3=${heartrates[$Q3]}
IQR=$((Q3-Q1))
lower=$(echo "$Q1 - 1.5 * $IQR" | bc)
upper=$(echo "$Q3 + 1.5 * $IQR" | bc)
awk -F, -v lower="$lower" -v upper="$upper" '$3 < lower || $3 > upper' data
# while read -r line; do
#     IFS=, read -r age gender heartrate sys dias bsl ckmb trop res <<< "$line"
#     if [[ $(bc <<< "$heartrate < $lower") -eq 1 || $(bc <<< "$heartrate > $upper") -eq 1 ]] ; then
#         echo "$line"
#     fi
# done < data



rm data
