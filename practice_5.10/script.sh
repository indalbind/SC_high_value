#!/bin/bash

man "$cmd" > "man_${cmd}.txt" 2> "man_${cmd}.err"

if [ -s "man_${cmd}.err" ]; then
    "$cmd" --help > "man_${cmd}.txt" 2>/dev/null
fi