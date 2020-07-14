#!/bin/bash -x
shopt -s extglob
read fname
pat="^[A-Z]{1}[a-z]{3,}$"
if [[ $fname =~ $pat ]]
then
        echo "$fname"
else
        echo "frst character start with caps"
fi





