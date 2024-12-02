#!/bin/bash

cut -d':' -f2 | sort | uniq -c | sort -nr | grep -oE '[0-9]{2,} [0-9]+'

