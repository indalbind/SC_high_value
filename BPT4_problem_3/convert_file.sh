#!/bin/bash

input_file=""
output_file=""
conv_type=""

while getopts "i:o:t:" opt; do
    case "${opt}" in
        i) input_file="${OPTARG}" ;;
        o) output_file="${OPTARG}" ;;
        t) conv_type="${OPTARG}" ;;
        *) echo "Usage: $0 -i <input_file> -o <output_file> -t <type>" 
           exit 1 ;;
    esac
done

if [ -z "$input_file" ] || [ -z "$output_file" ] || [ -z "$conv_type" ]; then
    echo "Error: All options (-i, -o, -t) are required"
    exit 1
fi

if [ ! -f "$input_file" ]; then
    echo "Error: Input file '$input_file' not found"
    exit 1
fi

case "$conv_type" in
    "csv2tsv")
        awk -v FPAT='([^,]*)|("[^"]+")' 'BEGIN {
            OFS = "\t"
        }
        {
            if (NF == 0) {
                print ""
            } else {
                for (i = 1; i <= NF; i++) {
                    gsub(/^"|"$/, "", $i)  # Remove surrounding quotes
                    printf "%s%s", $i, (i == NF ? "\n" : OFS)
                }
            }
        }' "$input_file" > "$output_file"
        ;;
    "tsv2csv")
        awk 'BEGIN {
            OFS = ","
        }
        {
            if (NF == 0) {
                print ""
            } else {
                n = split($0, fields, "\t")
                for (i = 1; i <= n; i++) {
                    # Remove existing quotes if present
                    gsub(/^"|"$/, "", fields[i])
                    
                    # Check if field needs quoting (contains comma, quote, or newline)
                    if (fields[i] ~ /[,"\n]/) {
                        gsub(/"/, "\"\"", fields[i])  # Escape existing quotes
                        fields[i] = "\"" fields[i] "\""  # Add surrounding quotes
                    }
                    printf "%s%s", fields[i], (i == n ? "\n" : OFS)
                }
            }
        }' "$input_file" > "$output_file"
        ;;
    *)
        echo "Error: Invalid conversion type. Use 'csv2tsv' or 'tsv2csv'"
        exit 1
        ;;
esac
