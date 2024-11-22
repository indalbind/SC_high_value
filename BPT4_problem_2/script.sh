#!/bin/bash

image_count=0
document_count=0
compressed_count=0
unknown_count=0

while read -r filename; do
    extension="${filename##*.}"
    
    case "$extension" in
        jpg|png|gif)
            ((image_count++))
            ;;
        pdf|docx|txt)
            ((document_count++))
            ;;
        zip|tar|gz)
            ((compressed_count++))
            ;;
        *)
            ((unknown_count++))
            ;;
    esac
done
    
echo "Report:"
echo "Image file: $image_count"
echo "Document file: $document_count"
echo "Compressed file: $compressed_count"
echo "Unknown file type: $unknown_count"
