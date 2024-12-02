# OPPE Practice 9

## Problem Statement

Write a bash script `script.sh` which works on output of `ls -li` to produce an output which will have unique list of files which has no softlinks and has only one file for multiple hardlinks present.

Note: The final output should be sorted by ascending order of inode number.

Hint: Output of the `ls -li` is given as standard input (`&0`). Do not run `ls -li` yourself.

## Sample Input

```bash
   12 -rwxr-xr-x 1 root root 1113504 Apr 18  2022 bash
   13 -rwxr-xr-x 1 root root  716464 Mar 13  2018 btrfs
   14 -rwxr-xr-x 1 root root  375952 Mar 13  2018 btrfs-debug-tree
   15 -rwxr-xr-x 1 root root  371856 Mar 13  2018 btrfs-find-root
   16 -rwxr-xr-x 1 root root  396432 Mar 13  2018 btrfs-image
   17 -rwxr-xr-x 1 root root  375952 Mar 13  2018 btrfs-map-logical
   18 -rwxr-xr-x 1 root root  371856 Mar 13  2018 btrfs-select-super
   19 -rwxr-xr-x 1 root root  371856 Mar 13  2018 btrfs-zero-log
   20 lrwxrwxrwx 1 root root       5 Mar 13  2018 btrfsck -> btrfs
   21 -rwxr-xr-x 1 root root  375952 Mar 13  2018 btrfstune
   22 -rwxr-xr-x 3 root root   34888 Jul  4  2019 bunzip2
   23 -rwxr-xr-x 1 root root 2062296 Nov 25  2021 busybox
   22 -rwxr-xr-x 3 root root   34888 Jul  4  2019 bzcat
   24 lrwxrwxrwx 1 root root       6 Jul  4  2019 bzcmp -> bzdiff
   25 -rwxr-xr-x 1 root root    2140 Jul  4  2019 bzdiff
   26 lrwxrwxrwx 1 root root       6 Jul  4  2019 bzegrep -> bzgrep
   27 -rwxr-xr-x 1 root root    4877 Jul  4  2019 bzexe
   28 lrwxrwxrwx 1 root root       6 Jul  4  2019 bzfgrep -> bzgrep
   29 -rwxr-xr-x 1 root root    3642 Jul  4  2019 bzgrep
```

## Sample Output

```
   12 -rwxr-xr-x 1 root root 1113504 Apr 18  2022 bash
   13 -rwxr-xr-x 1 root root  716464 Mar 13  2018 btrfs
   14 -rwxr-xr-x 1 root root  375952 Mar 13  2018 btrfs-debug-tree
   15 -rwxr-xr-x 1 root root  371856 Mar 13  2018 btrfs-find-root
   16 -rwxr-xr-x 1 root root  396432 Mar 13  2018 btrfs-image
   17 -rwxr-xr-x 1 root root  375952 Mar 13  2018 btrfs-map-logical
   18 -rwxr-xr-x 1 root root  371856 Mar 13  2018 btrfs-select-super
   19 -rwxr-xr-x 1 root root  371856 Mar 13  2018 btrfs-zero-log
   21 -rwxr-xr-x 1 root root  375952 Mar 13  2018 btrfstune
   22 -rwxr-xr-x 3 root root   34888 Jul  4  2019 bunzip2
   23 -rwxr-xr-x 1 root root 2062296 Nov 25  2021 busybox
   25 -rwxr-xr-x 1 root root    2140 Jul  4  2019 bzdiff
   27 -rwxr-xr-x 1 root root    4877 Jul  4  2019 bzexe
   29 -rwxr-xr-x 1 root root    3642 Jul  4  2019 bzgrep
 ```
