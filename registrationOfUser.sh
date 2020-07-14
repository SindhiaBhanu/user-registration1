#!/bin/bash -x
shopt -s extglob
read lastName
pattern="^[A-Z]{1}[a-z]{3,}$"
if [[ $lastName =~ $pattern ]]
then
        echo "$lastName"
else
        echo "invalid"
fi





