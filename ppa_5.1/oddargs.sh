#!/bin/bash

for i in "$@"; do
    if (( (i-1) % 2 == 0 )); then
        echo "$i"
    fi
done
