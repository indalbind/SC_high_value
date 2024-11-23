BEGIN {
    if (ARGC != 2) {
        exit 1
    }

    n = ARGV[1]

    fib1 = 1
    fib2 = 1

    if (n == 1 || n == 2) {
        print 1
        exit 0
    }

    for (i = 3; i <= n; i++) {
        fib_next = fib1 + fib2
        fib1 = fib2
        fib2 = fib_next
    }

    print fib2
}