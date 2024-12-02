#!/bin/bash

echo "Users:"
while read -r line; do
  if [[ $line =~ ^# ]]; then
    continue
  fi
  IFS=":" read -r username x uid gid comment home shell <<< "$line"
  if [[ $uid -lt 1000 ]]; then
    continue
  fi
  echo "---"
  if [[ -n $comment ]]; then
    echo "Comment: $comment"
  elif [[ "$home" = "/home/$username" ]]; then
    home="/home/\$USER"
    echo "Username: $username"
  else
    echo "Username: $username"
  fi
  echo "Home Directory: $home"
done
