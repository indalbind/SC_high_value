Sriveni is receiving files from client in various format. 
She is recieving numerous files in different formats and she wanted to automate the task of cleaning these files. 

She often needs to convert data files between different formats, such as CSV and TSV, for various data processing tasks.
To simplify this process, she wants to create a Bash script that can convert a file from one format to another.

Write a Bash script named `convert_file.sh` that uses **getopts** to parse command-line options.
The script should accept the following options:

-i <input_file>: Specifies the input filename.
-o <output_file>: Specifies the output filename.
-t <type>: Specifies the type of conversion, either `csv2tsv` or `tsv2csv`.

The script should read the input file, perform the specified conversion, and write the output to the specified output file.
The file should be assumed to be present in the _cwd_.

**Note**

- Apart from `getopts` you will need to used `sed` commands for the coversion.

**Sample Usage**

```
bash convert_file.sh -i input.csv -o output.tsv -t csv2tsv
```

**Sample Input**

```
Name,Age,Location
John Doe,30,New York
Jane Smith,25,Los Angeles
```

**Sample Output**

```
Name    Age    Location
John Doe    30    New York
Jane Smith    25    Los Angeles
```

**Example `getopts` Template**

```
while getopts "flags" o; do
  case "${o}" in
    f) command1 ;;
    l) command2 ;;
    a) command3 ;& # fall through
    g) command4 ;;
    *) echo "Illegal flag"; exit ;;
  esac
done
```
