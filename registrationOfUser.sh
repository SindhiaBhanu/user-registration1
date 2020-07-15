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


function lastName () {
        shopt -s extglob
        boolean=0
        pattern="^[[:upper:]]{1}[[:lower:]]{2,}$"
        while [[ $boolean -eq 0 ]]
        do
                echo "Enter your last name : "
                read last_Name
                if [[ $last_Name =~ $pattern ]]
                then
                        echo valid last name
                        ((boolean++))
                        break
                else
                        echo not valid last name. First letter should be CAPITAL
                fi
        done
}
lastName
