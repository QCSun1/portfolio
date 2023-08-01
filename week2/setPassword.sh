#!/bin/bash

read -rp "Hello, please enter a name for your new folder: " folderName

mkdir "$folderName"

read -rsp "please enter your secret password: " password

echo -n $password | sha256sum > ./$folderName/secret.txt

exit 0