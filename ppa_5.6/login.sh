#!/bin/bash

grep -o 'user [A-Za-z1-9]*\b' myauth.log | cut -d' ' -f2 | grep -vE '^(root|unknown)$' | sort | uniq
