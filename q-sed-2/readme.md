# Question

You have a text file which has some lines folded
using a backslash at the end of the line. Write a
program to unfold the text file. Assume standard
input contains the text file. The program should
print the unfolded text to the standard output.
It should not remove the other backslashes from
the text file.

For example, the text file may look like this:

```text
Hello\, this is \
a text file.
It has some lines \
folded using a backslash \
at the end of the line.
```

The program should unfold the text file and print
the following:

```text
Hello\, this is a text file.
It has some lines folded using a backslash at the end of the line.
```
