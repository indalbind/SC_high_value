#!/bin/bash

{
    read
    while IFS=, read -r Name Age; do
        if (( Age % 5 == 0 )); then
            echo "$Name"
        fi
    done
} </dev/stdin