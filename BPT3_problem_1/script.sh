#!/bin/bash

tail -n +2 student_data.csv | while IFS=, read -r StudentID Name Age Grade; do
	line_number=$(grep -n "$StudentID,$Name,$Age,$Grade" student_data.csv | cut -d: -f1)
	row_number=$(echo "$line_number - 1" | bc)
	if ! [[ "$StudentID" =~ ^[0-9]+$ ]]; then
    echo "Row $row_number: Invalid StudentID"
  fi
done