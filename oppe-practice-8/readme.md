# OPPE Practice 8

## Problem Statement

Sanjay is a professional photographer who capture photos of items for various clients. The photos database has thousands of photos collected each year. The photographs are stored in jpg format using `YYYYMMDD_HHMMSS.jpg` naming convention. For his backup purpose he wants to organise his data by moving the photos to a new directory created using `monthYear` (Ex: Jan2021) format (thus 12 directory for each year). 

Write a shell script `script.sh` which will create folders based on the image name and creates and moves it to the respective month directory.

Do not create empty folders.

**Hint:**
- Refer `date --help` or `man date` to get the format of month and year.

## Sample Input

These files are present in your script's current working directory.

```
20110313_024459.jpg
20110207_010404.jpg
20110812_222616.jpg
20110514_113934.jpg
```

## Sample Output

These folder structure are supposed to be created by your script. Your script should not output anything to the screen.

```
./Aug2011/20110812_222616.jpg
./Feb2011/20110207_010404.jpg
./Mar2011/20110313_024459.jpg
./May2011/20110514_113934.jpg
```
