#!/bin/bash

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

# Input numbers and select operation
read -rp "Please enter the first number: " n1

read -rp "Please enter the second number: " n2

echo "Please choose the number of an operation:"
echo -e "\033[34m1. Addition\033[0m"
echo -e "\033[32m2. Subtraction\033[0m"
echo -e "\033[31m3. Multiplication\033[0m"
echo -e "\033[35m4. Division\033[0m"

read -r choice

# Calculation
case $choice in
    1)
        result=$(add $n1 $n2)
        echo -e "\033[34m$n1+$n2=$result\033[0m"
        ;;
    2)
        result=$(subtract $n1 $n2)
         echo -e "\033[32m$n1-$n2=$result\033[0m"
        ;;
    3)
        result=$(multiply $n1 $n2)
         echo -e "\033[31m$n1*$n2=$result\033[0m"
        ;;
    4)
        result=$(divide $n1 $n2)
         echo -e "\033[35m$n1/$n2=$result\033[0m"
        ;;
    *)
        echo "Invalid Choice"
        exit 1
        ;;
esac


exit 0