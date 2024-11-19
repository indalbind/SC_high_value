#!/bin/bash

exec 2>/dev/null

categories=("0-50" "50-75" "75-85" "85-95" ">95")
ranges=(50 75 85 95)

declare -A filesystems
for category in "${categories[@]}"; do
  filesystems["$category"]=""
done

while read -r line; do
  [[ "$line" =~ ^Filesystem ]] && continue
  [[ -z "$line" ]] && continue

  usage=$(echo "$line" | awk '{print $5}' | tr -d '%')
  mount_point=$(echo "$line" | awk '{$1=$2=$3=$4=$5=""; print substr($0,6)}' | sed 's/^[[:space:]]*//')

  if ! [[ "$usage" =~ ^[0-9]+$ ]] || [[ -z "$mount_point" ]]; then
    continue
  fi

  if (( usage < ranges[0] )); then
    filesystems["0-50"]+="$mount_point"$'\n'
  elif (( usage < ranges[1] )); then
    filesystems["50-75"]+="$mount_point"$'\n'
  elif (( usage < ranges[2] )); then
    filesystems["75-85"]+="$mount_point"$'\n'
  elif (( usage < ranges[3] )); then
    filesystems["85-95"]+="$mount_point"$'\n'
  else
    filesystems[">95"]+="$mount_point"$'\n'
  fi
done < dfOutput.txt

for category in "${categories[@]}"; do
  if [[ -n "${filesystems[$category]}" ]]; then
    echo "$category"
    echo -e -n "${filesystems[$category]}" | sed '/^$/d'
  fi
done
