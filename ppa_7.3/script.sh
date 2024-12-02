#!/bin/bash

rand_dir=$(mktemp -d XXXXXX)
pushd "$rand_dir" > /dev/null || exit 1

while read file; do
  [[ "$file" == "" ]] && break
  while read line; do
    [[ "$line" == "" ]] && break
    echo "$line"
  done > "$file"
done

exec="../$(dirname "${BASH_SOURCE[0]}")/big.awk"

[[ -r "$exec" ]] || exit 1

awk -f "$exec" ./* 2>&1 < /dev/null

popd > /dev/null || exit 1
[[ -d "$rand_dir" ]] && rm "${rand_dir?}" -rf
