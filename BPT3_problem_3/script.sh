#!/bin/bash

read -r number
echo "$number" | sed 's/./&+/g' | sed 's/+$//' | bc
