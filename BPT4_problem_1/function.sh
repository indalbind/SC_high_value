#!/bin/bash

file_check() {
    local file_name=$1
    
    if [[ ! -r "$file_name" ]]; then
        echo "$file_name FAILED"
        return
    fi
    
    while IFS= read -r line; do
        [[ -z "$line" ]] && continue
        
        if ! [[ "$line" =~ ^[[:alnum:]]+:[[:xdigit:]]+$ ]]; then
            echo "$file_name FAILED"
            return
        fi
    done < "$file_name"
    
    echo "$file_name PASSED"
}