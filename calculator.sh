#!/bin/bash

while true
do
    echo "Calculator Menu:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Modulus"
    echo "6. Exit"
    
    echo "Enter your choice:"
    read choice

    if [ "$choice" -eq 6 ]; then
        echo "Exiting..."
        break
    fi

    echo "Enter first number:"
    read num1
    echo "Enter second number:"
    read num2

    case $choice in
        1) result=$(echo "$num1 + $num2" | bc);;
        2) result=$(echo "$num1 - $num2" | bc);;
        3) result=$(echo "$num1 * $num2" | bc);;
        4) result=$(echo "scale=2; $num1 / $num2" | bc);;
        5) result=$(echo "$num1 % $num2" | bc);;
        *) echo "Invalid choice"; continue;;
    esac

    echo "Result: $result"
done

