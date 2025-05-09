#!/bin/bash

flag=1

if (( $1 % 3 == 0 )); then 
    echo -n "Pling"    # -n prevents new line
    flag=0
fi

if (( $1 % 5 == 0 )); then 
    echo -n "Plang"
    flag=0
fi

if (( $1 % 7 == 0 )); then 
    echo -n "Plong"
    flag=0
fi

if (( flag == 1 )); then
    echo $1
fi


# --------------------------------
#       more clever solution

(( $1 % 3 )) || out+="Pling" 
(( $1 % 5 )) || out+="Plang" 
(( $1 % 7 )) || out+="Plong" 

echo ${out:-$1}     # bash handles it gracefully if `out` is unset