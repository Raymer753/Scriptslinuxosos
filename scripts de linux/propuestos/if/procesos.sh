#!/bin/bash

usuario=$1

if ! id -u "$usuario" > /dev/null 2>&1; then
    echo "El usuario $usuario no existe en el sistema."
    exit 1
fi

num_procesos=$(ps -u "$usuario" -o pid= | wc -l)

echo "El usuario $usuario tiene $num_procesos procesos en ejecución."
