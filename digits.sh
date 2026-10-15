#!/bin/bash
#Problem 4: Sum the numbers from 1000 to 2000 (inclusive) whose digits are all 0 or 1.

sum=0

for n in {1000..2000}; do
    if [[ $n =~ ^[01]+$ ]]; then
        sum=$((sum + n))
    fi
done

echo $sum
