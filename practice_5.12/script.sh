#!/bin/bash

if [ -z "$ct" ]; then
    ct=0
fi

ct=$((ct + words))

echo $ct