#!/bin/bash -x


echo "Welcome to flip coin simulation2"

result=$((RANDOM%2+1))

COUNT_HEAD=0
COUNT_TAIL=0
read -p "Enter how many time to flip coin: " userInput
TEMP=$userInput

declare -A FlipingCoin

COUNT_HH=0		#HH=Head Head
COUNT_HT=0		#HT=Head Tail
COUNT_TT=0		#TT=Tail Tail
COUNT_TH=0		#TH=Tail Tail

declare -A FlipingCoin

for(( i=1; i<=$userInput; i++ ))
	do
	
	result=$((RANDOM%4+1))
	
		case $result in
			1)
				COUNT_HH=$(($COUNT_HH+1))
				FlipingCoin["HH"]="$COUNT_HH"
				;;
			2)
				COUNT_HT=$(($COUNT_HT+1))
				FlipingCoin["HT"]="$COUNT_HT"
				;;
			3)
				COUNT_TT=$(($COUNT_TT+1))
				FlipingCoin["TT"]="$COUNT_TT"
				;;
			4)
				COUNT_TH=$(($COUNT_TH+1))
				FlipingCoin["TH"]="$COUNT_TH"
				;;
			esac
	done

headHeadPercentage=`awk "BEGIN{print ($COUNT_HH/$TEMP)*100}"`
headTailPercentage=`awk "BEGIN{print ($COUNT_HT/$TEMP)*100}"`
tailTailPercentage=`awk "BEGIN{print ($COUNT_TT/$TEMP)*100}"`
tailHeadPercentage=`awk "BEGIN{print ($COUNT_TH/$TEMP)*100}"`

for count in ${!FlipingCoin[@]}
do
	echo "$count : ${FlipingCoin[$count]}"
done

echo "Head head percentage : $headHeadPercentage"
echo "Head tail percentage : $headTailPercentage"
echo "Tail tail percentage : $tailTailPercentage"
echo "Tail head percentage : $tailHeadPercentage"
