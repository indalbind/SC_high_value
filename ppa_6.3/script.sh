#!/bin/bash

rand_dir=$(mktemp -d XXXXXX)
pushd "$rand_dir" > /dev/null || exit 1

mkdir -p source destination >/dev/null || exit 2

while read -r line; do
  if [[ "${line: -1}" = "/" ]]; then
    mkdir -p "$line" >/dev/null || exit 3
  else
    mkdir -p "$(dirname "$line")" >/dev/null || exit 4
    touch "$line" >/dev/null || exit 5
  fi
done

exec="../$(dirname "${BASH_SOURCE[0]}")/backup.sh"

[[ -r "$exec" ]] || exit 1

bash "$exec" 2>&1 < /dev/null

tree source | sed '/^$/q'
echo "---"
tree destination | sed '/^$/q'

popd > /dev/null || exit 1
[[ -d "$rand_dir" ]] && rm "${rand_dir?}" -rf
