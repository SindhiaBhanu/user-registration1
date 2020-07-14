#!/bin/bash
read -p "enter a phoneNumber : " phoneNumber
phNoPat="^[9][1][ ][0-9]{10}$"
if [[ $phoneNumber =~ $phNoPat ]]
then
        echo valid
else
        echo invalid
        echo write number in indian format e.g:91 1234567890
fi



