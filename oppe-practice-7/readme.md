# OPPE Practice 7

## Problem Statement

Error Handling requires one to understand exit status implementation.

Write a script `script.sh` which will echo "Success" if there are `3` arguments passed to it and print all the three arguments. 
If there are more or less arguments, the exit status should be `1`.

## Sample Example

```bash
> ./script hello how are you?
> echo $?
1
> ./script comment ca va?
Success comment ca va?
> echo $?
0
```
