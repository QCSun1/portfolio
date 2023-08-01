#!/bin/bash

echo "Hello"

read -rp "What is your name? " name

echo "Hello $name"

if [ "$name" = "Cici" ] [ "$name" = "cici" ]; then
    echo "You're really good at coding"
else
    echo "I don't really know you"
fi

exit 0