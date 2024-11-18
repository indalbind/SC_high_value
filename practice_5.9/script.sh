#!/bin/bash

echo "${eid1:0:2}${eid1:5:3}" > output.txt
echo "${eid2:0:2}${eid2:5:3}" >> output.txt
echo "${eid3:0:2}${eid3:5:3}" >> output.txt
sort -n output.txt