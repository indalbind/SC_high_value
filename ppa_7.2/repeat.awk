#!/usr/bin/awk -f

BEGIN {
    FS = "[^a-zA-Z]+"
}
{
    for (i = 1; i <= NF; i++) {
        word = tolower($i)
        seen[word] = 0
        if (word == "") {
            continue
        }
        next_word = tolower($(i+1))
        if (word == next_word && seen[word] == 0) {
            print word
            seen[word] = 1
            i++ 
        }
    }
}