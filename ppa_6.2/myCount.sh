#!/bin/bash

#NOT WORKING

while getopts "lwns:" opt; do
    case $opt in
        l)
            sed -n '$=' "${@: -1}"
            ;;
        w)
            sed 's/[[:space:]]\+/\n/g' "${@: -1}" | sed '/^$/d' | sed -n '$='
            ;;
        n)
            sed -n '/^[0-9]\+$/p' "${@: -1}" | sed -n '$='
            ;;
        s)
            sed -n "/$OPTARG/p" "${@: -1}" | sed -n '$='
            ;;
    esac
done
