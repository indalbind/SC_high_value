#!/bin/bash

if [ $(wc -l < data.txt) -gt 16 ]; then
    echo "Yes"
else
    echo "No"
fi
