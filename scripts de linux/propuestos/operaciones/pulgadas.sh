#!/bin/bash

echo "-----Opciones--------"
echo "Puedes pasar de pulgadas a centimetros y a la inversa"
echo "Para ello pulsa:"
echo "A para pasar de pulgadas a centimetros"
echo "B para pasar de centimetros a pulgadas"

read -p "Introduce la operacion deseada: " opc

if [ "$opc" = "A" ] || [ "$opc" = "a" ]; then
    read -p "Introduce las pulgadas: " pulg
    resultado=$(echo "scale=2; $pulg * 2.54" | bc)
    echo "$pulg pulgadas son $resultado centimetros"
elif [ "$opc" = "B" ] || [ "$opc" = "b" ]; then
    read -p "Introduce los centimetros: " cent
    resultado=$(echo "scale=2; $cent / 2.54" | bc)
    echo "$cent centimetros son $resultado pulgadas"
else
    echo "Opción no válida"
    exit 1
fi
