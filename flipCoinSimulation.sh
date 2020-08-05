#!/bin/bash -x


echo "Welcome to flip coin simulation2"


result=$((RANDOM%2+1))

COUNT_HEAD=0
COUNT_TAIL=0
read -p "Enter how many time to flip coin: " userInput
TEMP=$userInput

declare -A FlipingCoin

for(( i=1; i<=$userInput; i++ ))
	do
	
		result=$((RANDOM%2+1))
		case $result in
			1)
				COUNT_HEAD=$(($COUNT_HEAD+1))
				FlipingCoin["H"]="$COUNT_HEAD"
				;;
			2)
				COUNT_TAIL=$(($COUNT_TAIL+1))
				FlipingCoin["T"]="$COUNT_TAIL"
				;;
		esac
	done
headPercentage=`awk "BEGIN{print ($COUNT_HEAD/$TEMP)*100}"`
tailPercentage=`awk "BEGIN{print ($COUNT_TAIL/$TEMP)*100}"`

for count in ${!FlipingCoin[@]}
	do
		echo "$count : ${FlipingCoin[$count]}"
	done

echo "Head percentage : $headPercentage "
echo "Tail percentage : $tailPercentage "
