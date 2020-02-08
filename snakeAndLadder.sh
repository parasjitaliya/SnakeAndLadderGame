#!/bin/bash
echo "-------------welcome to new game------------------"
echo "-------------1>for normal move 2>for ladder & 3> snake----------------"
#ASSIGN VALUE FOR VARIABLE
player_start_pos=0
win_pos=100
pos=$player_start_pos
checkvalue=1
totalrolldie=0
function roll()
{
	
	rolldie=$((RANDOM%6+1))
	totalrolldie=$((totalrolldie+1))
	echo $rolldie ..this trun
}
function checkOptions()
{
	options=$((RANDOM%3))
	case $options in
		1)
			pos=$pos 
			;;
		2)	
			pos=$(( $pos + $rolldie ))
			if [ $pos -gt $win_pos ]
			then
     				pos=$(( $pos - $randomCheck ))
  			fi
		  	;;
		3)
			pos=$(( $pos - $rolldie ))
			if [ $pos -lt $win_pos ]
  			then
     				pos=$player_start_pos
  			fi
			;;
	esac
	echo $pos
}
function playerTurn()
{
	echo $checkvalue....for player
	if [[ $checkvalue -eq 1 ]]
	then 
		checkvalue=2
	else
		checkvalue=1
	fi
}
while [ $pos -lt $win_pos ]
do
	roll
	checkOptions
	playerTurn
done 
echo "number of time randomcheck happened..:"$totalrolldie 
echo Player $checkvalue won
