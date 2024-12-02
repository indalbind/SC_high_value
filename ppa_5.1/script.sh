#!/bin/bash

readarray -t args
bash "$(dirname "${BASH_SOURCE[0]}")/oddargs.sh" "${args[@]}" 2>&1 < /dev/null

