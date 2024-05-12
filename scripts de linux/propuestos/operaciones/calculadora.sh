#!/bin/bash

while [ "$opc" != "x" ] && [ "$opc" != "X" ]
do
    echo "------------Operaciones------------"
    echo "Hay estas opciones:"
    echo "A) Sumar"
    echo "B) Restar"
    echo "C) Multiplicar"
    echo "D) Dividir"
    read -p "Elige la operacion a realizar: " opc
    read -p "Valor del primer número?: " num1
    read -p "Valor del segundo número?: " num2

    case $opc in
    a|A) resultado=$(echo "$num1 + $num2" | bc)
         echo "El resultado de la suma es $resultado";;
    b|B) resultado=$(echo "$num1 - $num2" | bc)
         echo "El resultado de la resta es $resultado";;
    c|C) resultado=$(echo "$num1 * $num2" | bc)
         echo "El resultado de la multiplicación es $resultado";;
    d|D) resultado=$(echo "scale=2; $num1 / $num2" | bc)
         echo "El resultado de la división es $resultado";;
    x|X) echo "Saliendo...";;
    *) echo "Opción no válida";;
    esac
done
