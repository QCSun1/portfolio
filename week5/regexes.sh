#!/bin/bash

#use grep statement to filter previous works in the unit

echo -e "\033[31mPlease select your search: \033[0m"

echo "1. all sed statements"

echo "2. all lines that start with the letter m"

echo "3. all lines that contain three digit numbers"

echo "4. all echo statements with at least three words"

echo "5. all lines that would make a good password"

read option 

case $option in
    1)
    grep -r 'sed' ./portfolio
    ;;
    2)
    grep -r '^m.' ./portfolio
    ;;
    3)
    grep -rE '\b[0-9]\b' ./portfolio
    ;;
    4)
    grep -rE 'echo\s+\S+\s+\S+\s+\S+' ./portfolio
    ;;
    5)
    grep -r '.*[a-z].*[A-Z].*[0-9].*[!@#$%^&*()_+].\{8,\}' ./portfolio
    ;;
    *)
    echo "Invalid input"
    ;;
esac

exit 0