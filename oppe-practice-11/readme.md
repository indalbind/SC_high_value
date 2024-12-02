# OPPE Practice 11

## Problem Statement

A text input usually contains puctuations, lowercase letters, and uppercase letters. 

Write a script `script.sh` which will 
- remove punctuations
- convert uppercase letters to lowercase and 
- convert the space character to newline character in that order.

Finally use concepts of `sort` and `uniq` commands to print the most frequent words ranked 5 to 10 along with its count.

Note:
- The input should be obtained from the standard input (`&0`).

## Sample Input

```
A B C D A E F G H H H A A B I J K L A X K Y Y Y Y Y Y Y G G G A Y A I I I
L L X X I G
```

## Sample Output

```
l
h
k
b
j
```

## Hint
- Refer to `tr`, `sort`, `uniq` commands for help.


