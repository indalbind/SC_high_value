#!/bin/bash

awk -v FS="$DELIMITER" -v N="$N" -f script.awk
