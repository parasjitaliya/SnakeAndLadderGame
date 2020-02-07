#!/bin/bash
echo "-------------welcome to new game------------------"
echo "..........snake on position 16-5 and 37-21............"
echo "..........ladder on position 4-17 and 23-39..........."
#ASSIGN VALUE FOR VARIABLE
player_start_pos=0
win_pos=100
pos=$player_start_pos
rolldie=$((RANDOM%6+1))
function checkOptions()
{
	options=$((RANDOM%3))
	while [ $pos -le $win_pos ]
	do
		if [ $options -eq 0 ]
		then
			pos=$player_start_pos
		elif [ $options -eq 2 ]
		then 
			pos=$(($pos+$rolldie))
		else
			pos=$(($pos-$rolldie))
			if [ $pos -lt 0 ]
			then 
				pos=$player_start_pos
			fi
		fi
	done
} 
checkOptions
