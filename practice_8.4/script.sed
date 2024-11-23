:loop
/"""/ {
    N
    s/"""\s*\([^"""\n]*\)\s*"""/#\1/
    t
    b loop
}

# Handle inline triple-quote comments
s/"""\([^"""]*\)"""/#\1/

# Handle multi-line triple single-quotes
:loop2
/'''/ {
    N
    s/'''\s*\([^'''\n]*\)\s*'''/#\1/
    t
    b loop2
}

# Handle inline triple single-quote comments
s/'''\([^''']*\)'''/#\1/