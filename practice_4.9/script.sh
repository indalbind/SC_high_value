#!/bin/bash

for file in *.cpp; do
    if [[ -f "$file" ]]; then
        if grep -qP '^void main\(\)\s+\{$' "$file"; then
            echo "$file"
        fi
    fi
done