#!/bin/bash

for i in $(seq 1 $1); do
    printf '%*s\n' "$i" | tr " " "*"
done