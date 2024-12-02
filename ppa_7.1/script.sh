#!/bin/bash

exec="./$(dirname "${BASH_SOURCE[0]}")/evenodd.awk"

[[ -r "$exec" ]] || exit 1

awk -f "$exec" 2>&1

