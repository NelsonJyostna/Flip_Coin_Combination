#!/bin/bash -x


echo "Welcome to Flipcoin Simulator"


function first()
{
    declare -A Dict

    for (( i=1 ; i<=$n; i++ )) 
    do
        combination=""
       for (( j=1; j<=$Numcoin; j++ ))
       do
	ran=$((RANDOM%2))
           if [ $ran -eq 0 ]
           then
	   combination=$combination"H"
           else
           combination=$combination"T"
           fi
       done
       Dict[$combination]=$((${Dict[$combination]}+1))
     done
     second
}

function second()
{
   for i in ${!Dict[@]}
   do
    d=${Dict[$i]}
    echo "$i $((( $d * 100 ) / $n ))%"
   done
}

read -p "Enter number of time you would like to Flip =" n

read -p "Enter choice =" Numcoin
echo "1) Singlet"
echo "2) Doublet"
echo "3) Triplet"


case $Numcoin in
   1) first $Numcoin  ;;
   2) first $Numcoin  ;;
   3) first $Numcoin  ;;
   *) echo "Incorrect option" ;;
esac
