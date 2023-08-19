#!/bin/bash

#This function prints a given error 
      
printError() 
      
{ 
      
    echo -e "\033[31mERROR:\033[0m $1" 
      
} 

# This function will screen the number input
getNumber() 
      
{ 
      
    read -p "$1: " 
      
    while (( $REPLY < $2 || $REPLY> $3 )); do 
      
        printError "Invalid Input" 
      
        read -p "$1: " 
      
    done 
      
} 

#The loop for the guessing game until get the correct answer
while true; do
    getNumber "Please enter a number between 1 and 100: " 1 100
    if [ $REPLY -eq 42 ]; then
        echo "Right!"
        break
    elif [ $REPLY -le 42 ]; then

        echo "Too Low!"
    else
        echo "Too High!"
    fi
done
