#!/bin/bash

directory="$1"
find "$directory" -type f -empty -print -delete
