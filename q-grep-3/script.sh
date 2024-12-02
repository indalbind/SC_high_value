#!/bin/bash

# Solution 1 ----------------------------------------------

# declare -A map
# map=([Macintosh]=0 [Windows]=0 [Linux]=0 [iPhone]=0)
# OS=("Macintosh" "Windows" "Linux" "iPhone")
#
# while read -r line
# do
#     for key in "${OS[@]}"
#     do
#         if [[ $line =~ $key ]]; then
#             map[$key]=$((map[$key]+1))
#         fi
#     done
# done
#
# for key in "${OS[@]}"
# do
#     echo "$key: ${map[$key]}"
# done

# Solution 2 ----------------------------------------------

# cat > temp
# OS=("Macintosh" "Windows" "Linux" "iPhone")
# for os in "${OS[@]}"; do
#   echo "$os: $(grep -c $os temp)"
# done
# rm temp

# Solution 3 ---slow--------------------------------------

# OS=("Macintosh" "Windows" "Linux" "iPhone")
# declare -A map
# map=([Macintosh]=0 [Windows]=0 [Linux]=0 [iPhone]=0)
# while read -r line; do
#   for os in "${OS[@]}"; do
#     map[$os]=$((map[$os]+$(grep -wc "$os" <<< "$line")))
#   done
# done
#
# for os in "${OS[@]}"; do
#   echo "$os: ${map[$os]}"
# done

# Solution 4 ----------------------------------------------

cat > temp
for os in Macintosh Windows Linux iPhone; do
  echo "$os: $(grep -wc "$os" temp)"
done
rm temp
