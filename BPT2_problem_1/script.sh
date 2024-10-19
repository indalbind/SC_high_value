#!/bin/bash

while IFS= read -r line; do
    country=$(echo "$line" | grep -oP '(?<=<span class="country-name">)[^<]+')
    capital=$(echo "$line" | grep -oP '(?<=<span class="country-capital">)[^<]+')

    if [ -n "$country" ] && [ -n "$capital" ]; then
        echo "$country"
        echo "$capital"
    fi
done