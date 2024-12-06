#!/usr/bin/awk -f

BEGIN {
    currfile = ""
    maxfile = ""
    maxlines = 0
    currlines = 0
}
{
    if (FILENAME != currfile) {
        if (currlines > maxlines) {
            maxlines = currlines
            maxfile = currfile
        }
        currfile = FILENAME
        currlines = 0
    }
    currlines++
}
END {
    if (currlines > maxlines) {
        maxlines = currlines
        maxfile = currfile
    }
    print maxfile
}