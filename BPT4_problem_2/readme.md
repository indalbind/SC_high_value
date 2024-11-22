George is working on his father's laptop to help him categorize data present on his system. He observed that in the desktop folder there are numerous files of various types. He wants to do a preliminary analysis of what files are present and what their types are.

To help him, create a Bash script named `script.sh` that reads a list of filenames from standard input (`&0`) and categorizes each file into one of four categories based on their extensions.

| Category   | Extensions              |
| -----------| ----------------------- |
| Image      | `.jpg`, `.png`, `.gif`  |
| Document   | `.pdf`, `.docx`, `.txt` |
| Compressed | `.zip`, `.tar`, `.gz`   |
| Unknown    | Others                  |


The script should count the number of each type of file and generate a Report.

**Sample Input**

```
example.jpg
example.png
example.gif
example.pdf
example.docx
example.txt
example.zip
example.tar
example.gz
example.xyz
example.abc
```

**Sample Output**

```
Report:
Image file: 3
Document file: 3
Compressed file: 3
Unknown file type: 2
```
