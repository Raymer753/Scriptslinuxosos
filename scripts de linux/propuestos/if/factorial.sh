#!/bin/bash

read -p "Introduce un número entero no negativo: " numero

if ! [[ "$numero" =~ ^[0-9]+$ ]]; then
    echo "El valor introducido debe ser un número entero no negativo."
    exit 1
fi

factorial=1


for (( i=1; i<=numero; i++ ))
do
    factorial=$((factorial * i))
done
echo "El factorial de $numero es $factorial"
