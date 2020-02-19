#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
read -p "What is the first input?" firstnum
read -p "What is the second input?" secondnum

sum=$(( firstnum + secondnum))
subtraction=$(( firstnum - secondnum))
multiplication=$((firstnum * secondnum))
dividend=$((firstnum / secondnum))
remainder=$((firstnum % secondnum))
exponent=$((firstnum ** secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$secondnum subtracted by $firstnum is $subtraction
$firstnum multiplied by $secondnum is $multiplication
$firstnum to the power of $secondnum is $exponent
$firstnum divided by $secondnum is $dividend and the remainder is $remainder
  - More precisely, it is $fpdividend
EOF
