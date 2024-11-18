#!/bin/bash

temp_out=$(mktemp)

$cmd 2>error.txt >$temp_out

if [ $? -eq 0 ]; then
    cat $temp_out
fi

rm $temp_out