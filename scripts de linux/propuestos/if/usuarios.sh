#!/bin/bash

usuarios_conectados=$(who | awk '{print $1}')

for usuario in "$@"; do
    if echo "$usuarios_conectados" | grep -s -w "$usuario" > /dev/null; then
        echo "El usuario $usuario está conectado."
    else
        echo "El usuario $usuario no está conectado."
    fi
done
