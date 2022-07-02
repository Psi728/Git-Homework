#!/bin/bash

content=$(cat ./hw.txt)
nums=(0 0 0 0)
i=0

for line in $content
do
    if [ $i != 0 ]
    then
        nums[$i]=${line: -1}
    fi
    i=$((i+1))
done

ans=$((nums[1] * nums[2]))
if [ $ans != ${nums[3]} ]
then
    exit 1
else
    echo "correct"
fi