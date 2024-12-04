#!/bin/bash
{
for i in {a..z}; do
    for j in {a..z}; do
        for k in {0..4}; do
            echo "file_${i}${j}${k}.txt"
        done
    done
done
} > documents.txt