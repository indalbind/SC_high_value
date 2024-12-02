# Question

> the test cases have been changed on Apr 04 21:45

Write a `script.sh` which will take input from standard input and write output
to standard output.
You are given heart attack data. From the given data through standard input,
print only the lines that have outliers in the heart rate field. The data
may or may not have a header row. The heart rate field is the 3rd field in
the data. The heart rate field is an integer. An outlier is a value that is
more than 1.5 times the interquartile range from the third quartile, or less
than 1.5 times the interquartile range from the first quartile.

**Header format**:

```csv
Age,Gender,Heart rate,Systolic blood pressure,Diastolic blood pressure,Blood sugar,CK-MB,Troponin,Result
```
