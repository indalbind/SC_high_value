BEGIN {
    FS = ","
    math_sum = 0
    physics_sum = 0
    chemistry_sum = 0
    count = 0
}

NR > 1 {
    math_sum += $2
    physics_sum += $3
    chemistry_sum += $4
    count++
}

END {
    print math_sum / count
    print physics_sum / count
    print chemistry_sum / count
}