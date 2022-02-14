#!/bin/bash

add() {

        result=$(( $num1 + $num2 ))
        echo $result
}

substract() {

        result=$(( $num1 - $num2 ))
        echo $result

}

multipl() {

        result=$(( $num1 * $num2 ))
        echo $result
}

forMethod() {
        echo "Insert a number tu count starting with that number"
        read Nfor

        result=$(( $num1 + $num2 ))


        for (( i = $result; i < $Nfor; i++ ))
        do
                echo $i 

                if [[ $Nfor > $result ]]
                then
                        echo "NumberFor is lower than $1 and $2 "
                fi
        done

}


getoperand() {
        if [[ $operand = "+" ]]
        then
                add
        elif [[ $operand = "-" ]]
        then
                substract
        elif [[ $operand = "*" ]]
        then
                multipl
        elif [[ $operand = "for" ]]
        then
                forMethod
        fi
}

inputs() {

echo "Write number 1"
read num1

echo "Write number 2"
read num2

echo "What do you want to do +  "*" - or a for"
read operand

getoperand

}

inputs

