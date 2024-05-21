#!/bin/bash
if [ "$#" -ne 1 ]; then
    exit 1
fi

numero=$1

if [ "$numero" -lt 0 ]; then
    absoluto=$(( -1 * numero ))
else
    absoluto=$numero
fi

echo "El valor absoluto de $numero es $absoluto"
