#!/bin/bash

mkdir -p five
cd five

for i in {1..5}; do
  mkdir -p "dir$i"
  for j in {1..4}; do
    for ((k = 1; k <= j; k++)); do
      echo "$j"
    done > "dir$i/file$j"
  done
done
