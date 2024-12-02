#!/bin/sed -f

1i# Copyright 2024
s/\bthe\b/this/g
/^[[:space:]]*function.*()[[:space:]]*{[[:space:]]*$/i#---
5~5{
  i#
  =
}

