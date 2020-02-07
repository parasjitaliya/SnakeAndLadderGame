#!/bin/bash
echo "-------------welcome to new game------------------"
echo "..........snake on position 16-5 and 37-21............"
echo "..........ladder on position 4-17 and 23-39..........."
#ASSIGN VALUE FOR VARIABLE
player_start_pos=0
rolldie=$((RANDOM%6+1))
function checkOptions(){
options=$((RANDOM%3))
if [ $options -eq 0 ]
then
	pos=$player1_start_pos
elif [ $options -eq 1 ]
then 
	pos=$(($pos+$rolldie))
else
	pos=$(($pos-$rolldie))
fi
}
 
checkOptions
