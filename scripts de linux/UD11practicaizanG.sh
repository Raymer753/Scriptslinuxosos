#!/bin/bash
echo "Introduce tu nombre"
read nomb
longitud=${#nomb}

if [ $longitud -lt 2 ]; then
    echo "mínimo de 2 caracteres para el nombre"
    exit
else
    echo "¡Hola, $nomb!"

    read -p "Introduce una ruta a un archivo:" archivo

    if [ -z "$archivo" ]; then
        echo "No has introducido una cadena"
        exit 1
    elif [ -f "$archivo" -a -w "$archivo" ]; then
        echo "El archivo existe y tiene permisos de escritura, borrando archivo"
        rm -f "$archivo"
    elif [ -d "$archivo" ]; then
        echo "La ruta dada es un directorio, no un archivo"
        echo "Creando archivo"
        touch "$archivo"
    else 
        echo "La ruta dada no existe, creando el archivo"
        touch "$archivo"
    fi

    echo "He terminado, en 10 segundos me iré"
    for ((i=10; i>=1; i--)); do
        echo "$i"
        sleep 1  # Espera de 1 segundo entre cada número
    done

    echo "¡Adiós, $nomb!"
fi

