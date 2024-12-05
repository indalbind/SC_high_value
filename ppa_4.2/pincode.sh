#!/bin/bash

while IFS=',' read -r circle region division office pincode office_type delivery district state; do
    if [[ "$pincode" == "Pincode" ]]; then
        continue
    fi
    if [[ "$pincode" == "$pin" ]]; then
        echo "$circle $division"
    fi
done < Pincode_info.csv


