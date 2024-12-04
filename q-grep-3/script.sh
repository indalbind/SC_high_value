#!/bin/bash

cat > temp
for os in Macintosh Windows Linux iPhone; do
  echo "$os: $(grep -wc "$os" temp)"
done
rm temp
