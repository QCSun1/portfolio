#!/bin/bash

read -rp "Hello, please enter your names:" nameOne nameTwo nameThree

unit="Scripting Languages"

echo -e "Hello $nameOne, $nameTwo, $nameThree! Welcome to \n\"$unit\""

read -rsp "What is the secret password:" password

echo "I won't tell anyone"

echo "I lied! Your password is $password"

exit 0