#!/bin/bash
loop=20
declare -A coin
#singlet combination
singletcombination ( ) {
echo "      SINGLET COMBINATION     "
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
#doublet combination
doubletcombination ( ) {
echo "      DOUBLET COMBINATION     "

coin[headhead]=0
coin[headtail]=0
coin[tailhead]=0
coin[tailtail]=0

for (( i=0; i<$loop; i++ ))
do
firstcoinflip=$((RANDOM%2))
secondcoinflip=$((RANDOM%2))

if [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 0 ]
then
	coin[headhead]=$(( ${coin[headhead]}+1 ))
elif [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 1 ]
then
	coin[headtail]=$(( ${coin[headtail]}+1 ))
elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 0 ]
then
   coin[tailhead]=$(( ${coin[tailhead]}+1 ))
elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 1 ]
then
    coin[tailtail]=$(( ${coin[tailtail]}+1 ))
fi
done

echo " Number of head_head combination flips" ${coin[headhead]}
echo " Number of head_tail combination flips" ${coin[headtail]}
echo " Number of tail_head combination flips" ${coin[tailhead]}
echo " Number of tail_tail combination flips" ${coin[tailtail]}

sumofcombinations=$(( ${coin[headhead]}+${coin[headtail]}+${coin[tailhead]}+${coin[tailtail]} ))
percentageofHeadHead=$(( (${coin[headhead]}*100)/$sumofcombinations ))
percentageofHeadTail=$(( (${coin[headtail]}*100)/$sumofcombinations ))
percentageofTailHead=$(( (${coin[tailhead]}*100)/$sumofcombinations ))
percentageofTailTail=$(( (${coin[tailtail]}*100)/$sumofcombinations ))

echo " Percentage of head_head combination:" $percentageofHeadHead"%"
echo " Percentage of head_tail combination:" $percentageofHeadTail"%"
echo " Percentage of tail_head combination:" $percentageofTailHead"%"
echo " Percentage of tail_tail combination:" $percentageofTailTail"%"

}

singletcombination
doubletcombination
