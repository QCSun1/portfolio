#!/bin/bash
# Check the password user enters against the stored passwords

# User enter password
echo -e "\033[35mPlease enter your secret password: \033[0m"
read -rsp "" password

# Hash the input password
inputHash=$(echo -n "$password" | sha256sum)

# Read the stored hash
storedHash=$(cat ./week2/secret.txt)

# Compare the hashes
if [ "$inputHash" = "$storedHash" ]; then
    echo -e "\033[32m\nAccess Granted\033[0m"

    # List the available options for correct password input
    echo -e "\033[33mSelect an option\033[0m"
    echo -e "\033[36m1.Create a folder"
    echo -e "2.Copy a folder"
    echo -e "3.Set a password"
    echo -e "4.Calculator"
    echo -e "5. Create week folders"
    echo -e "6. Check filenames"
    echo -e "7. Download a file"
    echo -e "\033[37m8. Exit\033[0m"

    read -r option
    
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
        echo -e "\033[32mGoodbye!\033[0m"
    esac

    exit 0

else
    # Wrong password
    echo -e "\033[31m\nAccess Denied!\033[0m"
    echo -e "\033[31mGoodbye!\033[0m"
    exit 1
fi