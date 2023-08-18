#!/bin/bash

awk 'BEGIN{
    print "Hello"
    FS="\n"
    RS=""
    CURRENCY="$"
}

{
    print "The price for a " $1 " is " CURRENCY $2
}

END{
    print "Goodbye" 
}' ./robot_prices.txt