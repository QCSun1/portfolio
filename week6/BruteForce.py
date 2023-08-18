#!/usr/bin/python3
import hashlib

# Hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

# characters included
characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

# length of password
max_password_length = 6

# Brute force loop
for length in range(1, max_password_length + 1):
    for word in itertools.product(characters, repeat=length):
        word = ''.join(word)
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
        print(f"Trying password {word}:{wordlistHash}")
        if(wordlistHash == passwordHash):
            print(f"Password has been cracked! It was {word}")
            exit()
