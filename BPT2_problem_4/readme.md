A CSV file named `people.csv` contains rows with the name and age of people.
Write a shell script using `grep` in `script.sh` to remove all the rows where the age is not a numeric value.

**Note**

- The input is provided through the standard input (`&1`).
- The header would also be filtered out.

**Sample Input**
```bash
Name,Age
John Doe,30
Jane Smith,twenty-five
Alice Johnson,25
Bob Brown,45
```
**Sample Output**

```bash
John Doe,30
Alice Johnson,25
Bob Brown,45
```