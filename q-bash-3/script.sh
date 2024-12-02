#!/bin/bash

while read -r line ; do
  if [[ $line = "EOF" ]]; then
    break
  fi
  echo "$line" >> file1
done
while read -r line ; do
  echo "$line" >> file2
done

# echo "Common:"
# comm -12 <(sort file1) <(sort file2)
# echo "Unique to file1:"
# comm -23 <(sort file1) <(sort file2)
# echo "Unique to file2:"
# comm -13 <(sort file1) <(sort file2)
# ^^ This works if order of output can be sorted

echo "Common:"
grep -Fxf file1 file2
echo "Unique to file1:"
grep -Fvxf file2 file1
echo "Unique to file2:"
grep -Fvxf file1 file2

rm file1 file2
