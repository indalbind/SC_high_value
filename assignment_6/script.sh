#!/bin/bash

if [ "$#" -ne 3 ]; then
    exit 1
fi

CITY=$1
TEMP_TYPE=$2
CALC_TYPE=$3

WEATHER_DATA=$(curl -s http://weather.local/city/${CITY}.html)

if [ -z "$WEATHER_DATA" ]; then
    exit 1
fi

if [ "$TEMP_TYPE" == "min" ]; then
    TEMPS=$(echo "$WEATHER_DATA" | grep -oP '\d+°C \| \d+°C' | sed 's/°C.*//')
elif [ "$TEMP_TYPE" == "max" ]; then
    TEMPS=$(echo "$WEATHER_DATA" | grep -oP '\d+°C \| \d+°C' | sed 's/.*| \([0-9]\+\)°C/\1/')
else
    exit 1
fi

if [ -z "$TEMPS" ]; then
    exit 1
fi

if [ "$(echo "$TEMPS" | wc -l)" -eq 1 ]; then
    printf "%.2f\n" "$TEMPS"
    exit 0
fi

average() {
    local sum=0
    local count=0
    for temp in $TEMPS; do
        sum=$(echo "$sum + $temp" | bc)
        ((count++))
    done
    printf "%.2f\n" "$(echo "$sum / $count" | bc -l)"
}

mode() {
    local freq=()
    local max_count=0
    local mode=0

    for temp in $TEMPS; do
        freq[$temp]=$(( ${freq[$temp]:-0} + 1 ))
        if [ ${freq[$temp]} -gt $max_count ]; then
            max_count=${freq[$temp]}
            mode=$temp
        elif [ ${freq[$temp]} -eq $max_count ] && [ "$(echo "$temp < $mode" | bc)" -eq 1 ]; then
            mode=$temp
        fi
    done
    printf "%.2f\n" "$mode"
}

if [ "$CALC_TYPE" == "average" ]; then
    average
elif [ "$CALC_TYPE" == "mode" ]; then
    mode
else
    exit 1
fi