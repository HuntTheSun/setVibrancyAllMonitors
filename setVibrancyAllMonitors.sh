#!/usr/bin/env bash

#get connected displays
DISPLAYS=$(xrandr | grep ' connected' | awk '{print $1}')

#get number of connected Displays
displayAmount=$(echo $DISPLAYS | wc -w)

#populate array with Displays
displayArray=($DISPLAYS)

#set vibrancy value to script argument value
for (( n=0; n<$displayAmount; n++ ))
do
    vibrant-cli ${displayArray[$n]} $1
done
