#!/bin/bash

rand_dir=$(mktemp -d XXXXXX)
pushd "$rand_dir" > /dev/null || exit 1

cat > myfile.txt

exec="../$(dirname "${BASH_SOURCE[0]}")/repeat.awk"

[[ -r "$exec" ]] || exit 1

awk -f "$exec" myfile.txt 2>&1 < /dev/null

popd > /dev/null || exit 1
[[ -d "$rand_dir" ]] && rm "${rand_dir?}" -rf
