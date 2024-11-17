#!/bin/bash
{
    count=0
    for file in *.cpp; do
        if [[ -f "$file" ]]; then
            if grep -qP '^void main\(\)\s+\{$' "$file"; then
                echo "$file" | tee /dev/tty
                ((count++))
            fi
        fi
    done 
    echo "$count" | tee /dev/tty
} > out.txt 