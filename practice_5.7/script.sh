#!/bin/bash
arr=($colors)

printf "%s" "$(echo "${arr[@]}" | tr -d 'aeiouAEIOU' | sed 's/ \+/ /g')"