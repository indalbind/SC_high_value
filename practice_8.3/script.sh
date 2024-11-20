#!/bin/bash

sed -i 's/ \{2,\}/ /g' lsoutput
cut -d " " -f 5 lsoutput
