#!/bin/bash

read -p "Introduce un número entero: " numero

modulo=$(( numero % 2 ))

if [ "$modulo" -eq 0 ]; then
    echo "El número $numero es par."
else
    echo "El número $numero es impar."
fi
