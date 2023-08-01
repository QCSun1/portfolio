#!/bin/bash

# Text color
BLUE='\033[34m'
GREEN='\033[32m'
RED='\033[31m'
PURPLE='\033[35m'
RESET='\033[0m'

# Addition
add() {
    echo "$1 + $2" | bc
}

# Subtraction
subtract() {
    echo "$1 - $2" | bc
}

# Multiplication
multiply() {
    echo "$1 * $2" | bc
}

# Division
divide() {
  if [ "$2" -eq 0 ]; then
    echo "Error: Cannot divide by zero."
  else
    echo "scale=2; $1 / $2" | bc
  fi
}

# Input numbers and operation
read -r choice

read -rp "Please enter the first number: " n1

read -rp "Please enter the second number: " n2

echo "Please choose the number of an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read -r choice

# Calculation
case $choice in
    1)
        result=$(add $n1 $n2)
        echo -e "${BLUE}$n1+$n2=$result${RESET}"
        ;;
    2)
        result=$(subtract $n1 $n2)
         echo -e "${GREEN}$n1-$n2=$result${RESET}"
        ;;
    3)
        result=$(multiply $n1 $n2)
         echo -e "${RED}$n1*$n2=$result${RESET}"
        ;;
    4)
        result=$(divide $n1 $n2)
         echo -e "${PURPLE}$n1/$n2=$result${RESET}"
        ;;
    *)
        echo "Invalid Choice"
        exit 1
        ;;
esac


exit 0