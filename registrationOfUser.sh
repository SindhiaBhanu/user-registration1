#!/bin/bash -x
read -p "enter your password :" password
pattern="^[0-9a-zA-Z.+@!$%*#]{8,}"
if [[ $password =~ $pattern ]]
then
        echo valid
else
        echo invalid
fi



