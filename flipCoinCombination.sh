#!/bin/bash

head=1
tail=0
random=$(( RANDOM%2 ))
if (( $random == $head ))
then
echo "$random - Winner is Head "
else
echo "$random - Winner is Tail"
fi
