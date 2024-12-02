#!/bin/bash

rand_dir=$(mktemp -d XXXXXX)
pushd "$rand_dir" > /dev/null || exit 1

mkdir data || exit 1

read fnos
for (( i=0; i<fnos; i++ )); do
  read line
  cut -d ":" -f 2- <<< "$line" | tr '#' '\n' > ./data/${line%%:*}
done

> map
read mnos
for (( i=0; i<mnos; i++ )); do
  read line
  echo "$line"  >> map
done

> result
read rnos
for (( i=0; i<rnos; i++ )); do
  read line
  echo "$line"  >> result
done

bash "../$(dirname "${BASH_SOURCE[0]}")/investment.sh" 2>&1 < /dev/null

popd > /dev/null || exit 1
[[ -d "$rand_dir" ]] && rm "${rand_dir?}" -rf
