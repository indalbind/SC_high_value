#!/bin/bash

awk -v FPAT='([^,]+)|(\"[^\"]+\")' -v YEAR="$YEAR" -f script.awk
