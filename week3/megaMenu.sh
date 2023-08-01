#!/bin/bash
# Check the password user enters against the stored passwords

# User enter password
read -rsp "Please enter your secret password: " password

# Hash the input password
inputHash=$(echo -n "$password" | sha256sum)

# Read the stored hash
storedHash=$(cat ./week2/secret.txt)

# Compare the hashes
if [ "$inputHash" = "$storedHash" ]; then
    echo -e "\nAccess Granted"

    # List the available options for correct password input
    echo "Select an option"
    echo "1.Create a folder"
    echo "2.Copy a folder"
    echo "3.Set a password"
    echo "4.Calculator"
    echo "5. Create week folders"
    echo "6. Check filenames"
    echo "7. Download a file"
    echo "8. Exit"

    read -rp "" option
    
    case $option in
        1)
        ./week2/folderMaker.sh;;
        2)
        ./week2/folderCopier.sh;;
        3)
        ./week2/setPassword.sh;;
        4)
        ./week3/calculator.sh;;
        5)
        ./week3/megafoldermaker.sh;;
        6)
        ./week3/filenames.sh;;
        7)
        ./week3/InternetDownloader.sh;;
        8)
        echo "Goodbye!"
    esac

    exit 0

else
    # Wrong password
    echo -e "\nAccess Denied"
    echo "Goodbye"
    exit 1
fi