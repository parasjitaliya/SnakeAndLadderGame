#!/bin/bash
echo "-------------welcome to new game------------------"
#ASSIGN VALUE FOR VARIABLE
player_start_pos=0
win_pos=100
pos=$player_start_pos

function roll()
{
	rolldie=$((RANDOM%6+1))
	echo $rolldie ..this trun
	((totalrolldie+1))
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
while [ $pos -lt $win_pos ]
do
	roll
	checkOptions
done 
echo "number of time randomcheck happened..:"$totalrolldie 
