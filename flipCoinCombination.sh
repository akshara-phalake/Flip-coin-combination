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

#triplet combination
tripletcombination ( ) {
echo "      TRIPLET COMBINATION     "
coin[headheadhead]=0
coin[headheadtail]=0
coin[headtailhead]=0
coin[headtailtail]=0
coin[tailheadhead]=0
coin[tailheadtail]=0
coin[tailtailhead]=0
coin[tailtailtail]=0

for (( i=0; i<$loop; i++ ))
do
firstcoinflip=$((RANDOM%2))
secondcoinflip=$((RANDOM%2))
thirdcoinflip=$((RANDOM%2))

if [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 0 -a $thirdcoinflip -eq 0 ]
then
        coin[headheadhead]=$(( ${coin[headheadhead]}+1 ))

elif [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 0 -a $thirdcoinflip -eq 1 ]
then
		  coin[headheadtail]=$(( ${coin[headheadtail]}+1 ))

elif [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 1 -a $thirdcoinflip -eq 0  ]
then
        coin[headtailhead]=$(( ${coin[headtailhead]}+1 ))

elif [ $firstcoinflip -eq 0 -a $secondcoinflip -eq 1 -a $thirdcoinflip -eq 1  ]
then
        coin[headtailtail]=$(( ${coin[headtailtail]}+1 ))
elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 0 -a $thirdcoinflip -eq 0 ]
then
        coin[tailheadhead]=$(( ${coin[tailheadhead]}+1 ))

elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 0 -a $thirdcoinflip -eq 1 ]
then
        coin[tailheadtail]=$(( ${coin[tailheadtail]}+1 ))

elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 1 -a $thirdcoinflip -eq 0  ]
then
        coin[tailtailhead]=$(( ${coin[tailtailhead]}+1 ))

elif [ $firstcoinflip -eq 1 -a $secondcoinflip -eq 1 -a $thirdcoinflip -eq 1  ]
then
        coin[tailtailtail]=$(( ${coin[tailtailtail]}+1 ))
fi
done

echo " Number of head_head_head combination flips" ${coin[headheadhead]}
echo " Number of head_head_tail combination flips" ${coin[headheadtail]}
echo " Number of head_tail_head combination flips" ${coin[headtailhead]}
echo " Number of head_tail_tail combination flips" ${coin[headtailtail]}
echo " Number of tail_head_head combination flips" ${coin[tailheadhead]}
echo " Number of tail_head_tail combination flips" ${coin[tailheadtail]}
echo " Number of tail_tail_head combination flips" ${coin[tailtailhead]}
echo " Number of tail_tail_tail combination flips" ${coin[tailtailtail]}

sumofcombinations=$(( ${coin[headheadhead]}+${coin[headheadtail]}+${coin[headtailhead]}+${coin[headtailtail]}+ ${coin[tailheadhead]}+${coin[tailheadtail]}+${coin[tailtailhead]}+${coin[tailtailtail]} ))
percentageofHeadHeadHead=$(( (${coin[headheadhead]}*100)/$sumofcombinations ))
percentageofHeadHeadTail=$(( (${coin[headheadtail]}*100)/$sumofcombinations ))
percentageofHeadTailHead=$(( (${coin[headtailhead]}*100)/$sumofcombinations ))
percentageofHeadTailTail=$(( (${coin[headtailtail]}*100)/$sumofcombinations ))
percentageofTailHeadHead=$(( (${coin[tailheadhead]}*100)/$sumofcombinations ))
percentageofTailHeadTail=$(( (${coin[tailheadtail]}*100)/$sumofcombinations ))
percentageofTailTailHead=$(( (${coin[tailtailhead]}*100)/$sumofcombinations ))
percentageofTailTailTail=$(( (${coin[tailtailtail]}*100)/$sumofcombinations ))

echo " Percentage of head_head_head combination:" $percentageofHeadHeadHead"%"
echo " Percentage of head_head_tail combination:" $percentageofHeadHeadTail"%"
echo " Percentage of head_tail_head combination:" $percentageofHeadTailHead"%"
echo " Percentage of head_tail_tail combination:" $percentageofHeadTailTail"%"
echo " Percentage of tail_head_head combination:" $percentageofTailHeadHead"%"
echo " Percentage of tail_head_tail combination:" $percentageofTailHeadTail"%"
echo " Percentage of tail_tail_head combination:" $percentageofTailTailHead"%"
echo " Percentage of tail_tail_tail combination:" $percentageofTailTailTail"%"
}
singletcombination
doubletcombination
tripletcombination
