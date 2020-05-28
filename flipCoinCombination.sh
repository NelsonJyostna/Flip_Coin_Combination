##!/bin/bash -x

echo "Welcome to Flipcoin Simulator"

read -p "Enter number of time you would like to Flip =" n



#Singlet_Program

Heads=0
Tails=1


declare -A Dict1

declare -A Dict2

B=0
C=0


for (( i=1; i<=n; i++ ))
do
   fliping_coin=$((RANDOM%2))
    if [ $fliping_coin -eq $Heads ]
     then
         echo Dict1[$i]="Heads"
            ((B++))

    elif [ $fliping_coin -eq $Tails ]
     then
         echo Dict2[$i]="Tails"
            ((C++))
    fi
done

D=1
echo "H = $((100*$B/$n))%"


echo "T = $((100*$C/$n))%"
