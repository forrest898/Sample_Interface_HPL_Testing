#!/bin/bash
cd ../
make clean && make
cd testing
filename="$1"
while read -r line
do
    name="$line"
    ../src/test_events $line
done < "$filename"
