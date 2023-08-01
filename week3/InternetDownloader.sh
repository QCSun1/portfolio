#!/bin/bash

# web downloader

while true; do

    read -rp "Please type a website URL to download or type “exit” to quit: " download

    if [ "$download" = "exit" ]; then
        echo "Goodbye!"
        break
    fi

    read -rp "Please type the location of where you would like to save the file to: " location
    
    if [ ! -d "$location" ]; then
        echo "Invalid Directory"
        continue
    fi
    
    wget -P "$location" "$download"

done
