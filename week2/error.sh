#!/bin/bash 

#Don't tell anyone!   
secret='shhh' 
      
#if the user types in the correct secret, tell them they got it right! 
read -rsp "please enter your secret code: " REPLY

if [ "$secret" = $REPLY ]; then 
      
    echo -e "\nYou got it right!" 
      
    correct='true' 
      
else
    echo -e "\nYou got it wrong :(" 
      
    correct='false' 
      
fi 
      
case $correct in 
#TODO: add a secret menu for people in the know.     
true) 
      
    echo "you have unlocked the secret menu!";; 

#people who get it wrong need to be told to go away!      
false) 
    
    echo "Go Away!";; 
     
esac 
     
     
     
					