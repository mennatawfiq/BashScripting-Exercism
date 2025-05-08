#!/bin/bash

name="$1"   # "" for preserving spaces

if [[ -z $name ]]; then     # checking if the input is empty
    echo "One for you, one for me."
else
    echo "One for $name, one for me."
fi


# another simpler solution --not mine
# echo "One for ${1-you}, one for me."