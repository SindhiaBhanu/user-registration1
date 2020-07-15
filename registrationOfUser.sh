#!/bin/bash -x
function firstName () {
        shopt -s extglob
        boolean=0
        pattern="^[[:upper:]]{1}[[:lower:]]{2,}$"
        while [[ $boolean -eq 0 ]]
        do
                echo "Enter your first name : "
                read first_Name
                if [[ $first_Name =~ $pattern ]]
                then
                        echo valid first name
                        ((boolean++))
                        break
                else
                        echo not valid first name. First letter should be CAPITAL
                fi
        done
}
firstName
