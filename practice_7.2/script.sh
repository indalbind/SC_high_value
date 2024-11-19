#!/bin/bash

if [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]]; then
    echo $(($1 + $2))
else
    echo "NOT INTEGERS" >&2
    exit 1
fi