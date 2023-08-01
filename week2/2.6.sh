#!/bin/bash
echo "pealse enter your name"
read name

if [ "$name" = "Cici" ]; then
    echo "Cici is a very cool name"
else
    echo "Hi $name"
fi

exit 0