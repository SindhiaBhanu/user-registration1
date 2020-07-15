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




function emailCheck () {
   shopt -s extglob
   boolean=0
   pattern="^[a-zA-Z0-9]+([.+_-]{1}[a-zA-Z0-9]{3,}){0,2}\@[a-zA-Z0-9]+(\.[a-z]+){1,3}$"
   while [[ $boolean -eq 0 ]]
   do
      echo "Enter your Email ID : "
         read char
         if [[ $char =~ $pattern ]]
         then
                  echo Email ID is valid
                  ((boolean++))
                  break
         else
                  echo Email Id is Invalid
         fi
   done

}
emailCheck



function mobileNumberCheck () {
        boolean=0
        format="^[9][1][ ][0-9]{10}$"
        while [[ $boolean -eq 0 ]]
        do
                read -p "Enter a mobile number : " number
                if [[ $number =~ $format ]]
                then
                        echo valid number
                        ((boolean++))
                        break
                else
                        echo Invalid number
                fi
        done
}
mobileNumberCheck




function passwordCheck(){
        boolean=0
        specialCharacter="^[A-Za-z0-9][@#$%&=_-]{1}[A-Za-z0-9]*$"
        while [[ $boolean -eq 0 ]]
        do
                echo "Enter the password"
                read  password
      if [[ ${#password} -ge 8 && "$password" =~ [[:upper:]]+ && "$password" =~ [[:digit:]] ]]
                then
                        echo valid password
                        ((boolean++))
                        break
                else
                        echo The password is INVALID give atleast one capital and one digit with minimum 8 characters
                fi
        done
}
passwordCheck




