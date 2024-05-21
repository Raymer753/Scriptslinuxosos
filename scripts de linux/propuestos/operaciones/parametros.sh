#!/bin/bash
if [ "$#" -ne 6 ]; then
    echo "Se requieren exactamente 6 parámetros."
    echo "Uso: $0 a b c d e f"
    exit 1
fi

a=$1
b=$2
c=$3
d=$4
e=$5
f=$6

echo "$a $b $c"
echo "$d $e $f"
