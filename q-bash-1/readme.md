# Question

Write a `script.sh` which will take input from standard input and write output
to standard output.

The input is the `/etc/passwd` file. Your script should read the input
line by line using `while` loop with `read` and perform the following:

- If the line is a comment, then skip it.
- If the line is not a comment, then print the username and home directory
  of the user.
- If the user has a description (comment) in the GECOS field,
  then print the description instead of the username.
- If the home directory is of the form `/home/username`,
  then print '/home/$USER' literally.
- If not printing the username,
  then print the home directory as it is.

Your script should only print regular users, not system users. (Hint: UID >= 1000)

Your script should delimit records using '---'
