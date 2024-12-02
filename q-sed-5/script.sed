#!/bin/sed -f

s/{ "data": //
s/}$//
s/{/{\n\t/g
s/}/\n}/g
s/,/,\n\t/g
