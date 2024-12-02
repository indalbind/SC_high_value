# OPPE Practice 1

## Problem Statement

Write a script `script.sh` to execute the bash script `run.sh` and print "SUCCESS" if it exits with status 0, otherwise print "FAIL". Note that the file may not have execute permission.

Note: `run.sh` may also be absent, handle it accordingly.

## Sample Example

```bash
> echo "echo hello" > run.sh
> chmod a-x run.sh
> ./script.sh
SUCCESS
> echo "echa hello" > run.sh
> ./script.sh
FAIL
```
