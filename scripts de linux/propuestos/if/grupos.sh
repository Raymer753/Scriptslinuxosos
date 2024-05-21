#!/bin/bash

usuario=$1

grupos=$(groups "$usuario" 2>/dev/null)

if [ -z "$grupos" ]; then
    echo "El usuario $usuario no pertenece a ningún grupo."
else
    echo "El usuario $usuario pertenece a los siguientes grupos:"
    echo "$grupos"
fi
