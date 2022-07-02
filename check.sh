#!/bin/bash

content=$(cat ./hw.txt)
nums=(0 0 0 0)
i=0

for line in $content
do
    if [ $i != 0 ]
    then
        nums[$i]=${line: -2}
    fi
    i=$((i+1))
done

if [ $[ ${nums[1]} * ${nums[2]} ] != ${nums[3]} ]
then
    exit 1
else
    echo "correct"
fi