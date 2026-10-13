#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit
fi
d="$1"
num="$2"
find "$d" -type f -size +"$num"c -delete
