#!/bin/bash
# Check the password user enters against the stored passwords

# User enter password
read -rsp "Please enter your secret password: " password

# Hash the input password
inputHash=$(echo -n "$password" | sha256sum)

# Read the stored hash
storedHash=$(cat ./secret.txt)

# Compare the hashes
# Correct Password
if [ "$inputHash" = "$storedHash" ]; then
    echo -e "\nAccess Granted"
    exit 0
# Wrong Password
else
    echo -e "\nAccess Denied"
    exit 1
fi