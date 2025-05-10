#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

if [[ ${#1} -ne ${#2} ]]
then
    echo "strands must be of equal length"
    exit 1
fi

cnt=0

for (( i=0; i<${#1}; i++ ))
do
    [[ "${1:$i:1}" == "${2:$i:1}" ]] || (( cnt++ ))
done

echo $cnt

# c1=${s1:$i:1} # this is the right way for accessing a string element, s1[i] is used with array but gives wrong behaviour with strings
