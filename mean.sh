#!/bin/bash


if [[ $# -lt 1 || $# -gt 2 ]]; then
    echo "usage: ./mean.sh <column> [file.csv]" >&2
    exit 1
fi

column=$1

if [[ ! $column =~ ^[1-9][0-9]*$ ]]; then
    echo "usage: ./mean.sh <column> [file.csv]" >&2
    exit 1
fi

if [[ $# -eq 2 ]]; then
    awk -F ',' -v col="$column" 'NR > 1 {
        sum += $col
        count++
    }
    END {
        if (count > 0)
            print sum / count
    }' "$2"
else
    awk -F ',' -v col="$column" 'NR > 1 {
        sum += $col
        count++
    }
    END {
        if (count > 0)
            print sum / count
    }'
fi
