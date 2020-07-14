#!/bin/bash -x
shopt -s extglob
read char
pattern="^[a-zA-Z0-9]+([.+_-]{1}[a-zA-Z0-9]{3,}){0,2}\@([a-zA-Z0-9]+\.[a-z]+){2,4}"
if [[ $char =~ $pattern ]]
then
        echo yes
else
        echo no
fi




