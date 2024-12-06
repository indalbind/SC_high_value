#!/usr/bin/awk -f

BEGIN {
    sum_odd = 0;
    sum_even = 0;
}
{
    for (i = 1; i <= $0; i++) {
        if (i % 2 == 0) {
            sum_even += i;
        } else {
            sum_odd += i;
        }
    }
}
END {
    print sum_odd;
    print sum_even;
}