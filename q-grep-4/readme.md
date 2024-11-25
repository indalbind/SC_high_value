# Question

Write a `script.sh` which will take input from standard input and write output
to standard output.
You are given an access log file to your standard input similar to previous
question. You are to print the count of the HTTP VERBS in the file. The HTTP
VERBS are GET, POST, PUT, DELETE, PATCH, OPTIONS, HEAD.

The output should be in descending order of the count of the HTTP VERBS.
VERBS with count 0 should not be printed. VERBS with same count should be
printed in the order of their name.

**Hint**: Be familiar with how loops work, how you can redirect stdout of
a loop to another command, and how to sort the output of a command based
on any arbitrary column.

**Sample Output**

```
GET 10
POST 5
DELETE 3
PUT 2
OPTIONS 1
```
