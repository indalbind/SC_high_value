#!/bin/bash

cat - | egrep -o '^([0-9]{1,3}\.){3}[0-9]{1,3}' | sort | uniq -c | sort -nr | tr -s ' ' | cut -d' ' -f2-
