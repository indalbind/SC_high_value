#!/bin/bash

sed '/^TV/d' | col > data
mapfile -t x_values < <(cut -d, -f1 data)
mapfile -t y_values < <(cut -d, -f4 data)

num_points=${#x_values[@]}

sum_x=0
sum_y=0
for ((i=0; i<num_points; i++)); do
    sum_x=$(echo "$sum_x + ${x_values[$i]}" | bc)
    sum_y=$(echo "$sum_y + ${y_values[$i]}" | bc)
done
mean_x=$(echo "scale=10; $sum_x / $num_points" | bc)
mean_y=$(echo "scale=10; $sum_y / $num_points" | bc)

numerator=0
denominator=0
for ((i=0; i<num_points; i++)); do
    x_diff=$(echo "${x_values[$i]} - $mean_x" | bc)
    y_diff=$(echo "${y_values[$i]} - $mean_y" | bc)
    numerator=$(echo "$numerator + ($x_diff * $y_diff)" | bc)
    denominator=$(echo "$denominator + ($x_diff * $x_diff)" | bc)
done
slope=$(echo "scale=10; $numerator / $denominator" | bc)
intercept=$(echo "scale=10; $mean_y - ($slope * $mean_x)" | bc)

echo "$intercept"
echo "$slope"
rm data
