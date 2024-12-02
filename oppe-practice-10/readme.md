# OPPE Practice 10

## Problem Statement

Write a script `script.sh` that will remove the outer rectangle and grow the inner rectangle to the exact size of outer rectangle and the inner rectangle region should be replaced with '0' (zero) including the boundary line.

Note: 
 - The outer rectangle is always made up of asterisks '*'
 - The inner rectangle is always made up of lowercase X 'x'
 - The input should be taken from the standard input

## Sample Input

```
********************************
*                              *
*  xxxxxxxxxxxxxxxxxxxxxxxxxx  *
*  x                        x  *
*  x                        x  *
*  xxxxxxxxxxxxxxxxxxxxxxxxxx  *
*                              *
********************************
```

## Sample Output

```
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
x                              x
x  00000000000000000000000000  x
x  00000000000000000000000000  x
x  00000000000000000000000000  x
x  00000000000000000000000000  x
x                              x
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```
