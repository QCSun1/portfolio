#!/bin/bash
# Check the password user enters against the stored passwords

# User enter password
read -rsp "Please enter your secret password: " password

# Hash the input password
inputHash=$(echo -n "$password" | sha256sum)

# Read the stored hash
storedHash=$(cat ./secret.txt)

# Compare the hashes
if [ "$inputHash" = "$storedHash" ]; then
    echo -e "\nAccess Granted"

    # List the available options for correct password input
    echo "Select an option"
    echo "1.Create a folder"
    echo "2.Copy a folder"
    echo "3.Set a password"

    read -rp "" option
    
    case $option in
        1)
        /home/student/scripts/folderMaker.sh;;
        2)
        /home/student/scripts/folderCopier.sh;;
        3)
        ./setPassword.sh;;
    esac

    exit 0

else
    # Wrong password
    echo -e "\nAccess Denied"
    echo "Goodbye"
    exit 1
fi