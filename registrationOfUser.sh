#!/bin/bash -x
read -p "enter your password :" password
pattern="^[0-9a-zA-Z.+@!$%*#]{8,}"
if [[ $password =~ $pattern ]]
shopt -s extglob
read char
pattern="^[a-zA-Z0-9]+([.+_-]{1}[a-zA-Z0-9]{3,}){0,2}\@[a-zA-Z0-9]+(\.[a-z]+){1,}"
if [[ $char =~ $pattern ]]
then
        echo valid
else
        echo invalid
fi



