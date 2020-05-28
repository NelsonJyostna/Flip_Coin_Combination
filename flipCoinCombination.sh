#!/bin/bash -x


Heads=0
Tails=1


fliping_coin=$((RANDOM%2))


if [ $fliping_coin -eq $Heads ]
then
    echo "Heads"
else
    echo "Tails"
fi
