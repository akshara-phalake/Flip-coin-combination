#!/bin/bash
echo "		SINGLET COMBINATION		"
loop=20
declare -A coin
#singlet combination
singletcombination ( ) {

coin[heads]=0
coin[tails]=0

for (( i=0; i<$loop; i++ ))
do
coinflip=$((RANDOM%2))

if [ $coinflip -eq 0 ]
then
	coin[heads]=$(( ${coin[heads]}+1 ))
else
	coin[tails]=$(( ${coin[tails]}+1 ))
fi
done
echo "Number of times head flips:" ${coin[heads]} 
echo "Number of times tail flips:" ${coin[tails]}

sumofheadtail=$(( ${coin[heads]}+${coin[tails]} ))
percentageofHeads=$(( (${coin[heads]}*100)/$sumofheadtail ))
percentageofTails=$(( (${coin[tails]}*100)/$sumofheadtail ))

echo "Percentage of heads:" $percentageofHeads"%"
echo "Percentage of tails:" $percentageofTails"%"

}
singletcombination
