#!/bin/sed -f

:x
$!N
s/\\\n//g
tx
P
D
