#!/bin/bash

rand_dir=$(mktemp -d XXXXXX)
pushd "$rand_dir" > /dev/null || exit 1

cat > somefile.txt

exec="../$(dirname "${BASH_SOURCE[0]}")/myCount.sh"

[[ -r "$exec" ]] || exit 1

if grep "wc|awk" "$exec" &>/dev/null ; then
  echo "Do not use wc or awk in your script"
else
  bash "$exec" -l somefile.txt 2>&1 < /dev/null
  bash "$exec" -w somefile.txt 2>&1 < /dev/null
  bash "$exec" -n somefile.txt 2>&1 < /dev/null
  bash "$exec" -s say somefile.txt 2>&1 < /dev/null
  bash "$exec" -l -n somefile.txt 2>&1 < /dev/null
  bash "$exec" -l -s say -l -n somefile.txt 2>&1 < /dev/null
fi

popd > /dev/null || exit 1
[[ -d "$rand_dir" ]] && rm "${rand_dir?}" -rf
