#!/bin/bash

# cut -d ' ' -f 1 | sort | uniq -c | sort -nr | tr -s ' ' | cut -d' ' -f2-
grep -oE '^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | sort | uniq -c | sort -nr | grep -oE '[0-9]+ [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'
