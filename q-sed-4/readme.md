# Question

You are given a CSV file as input in the standard input.
The file contains records of data from a database.
The data contains the following fields:

- Name
- Age
- Gender
- City
- Address

The address field can contain multiple lines of text. It is always enclosed in double quotes.

Write a sed script (script.sed) which will convert each record into a single
line of CSV format. The address field should be stripped of newlines and quoted.
The newlines should be replaced with a comma and a space.
