#!/bin/bash

filename=$(basename "$file")
echo "${filename%.*}"