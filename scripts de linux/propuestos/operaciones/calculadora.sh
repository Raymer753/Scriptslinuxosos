#!/bin/bash

read -p "Introduce el primer número: " num1
read -p "Introduce el segundo número: " num2

suma=$(echo "$num1 + $num2" | bc)
resta=$(echo "$num1 - $num2" | bc)
multiplicacion=$(echo "$num1 * $num2" | bc)
division=$(echo "scale=2; $num1 / $num2" | bc)
resto=$(echo "$num1 % $num2" | bc)

echo "Suma: $suma"
echo "Resta: $resta"
echo "Multiplicación: $multiplicacion"
echo "División: $division"
echo "Resto: $resto"
