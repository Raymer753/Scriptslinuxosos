#!/bin/bash

until [ "$opc" == "d" ]
do
echo "--------Menu-------"
echo "Pulsa a para ver el directorio de trabajo"
echo "Pulsa b para ver los usuarios conectados y cual eres"
echo "pulsa c para ver el espacio del disco del sistema"
echo "Pulsa d para salir"
read -p "Elige una opción:" opc

case $opc in
a|A) pwd;;
b|B) who;id -u;;
c|C) df -h |  df -h | grep /$ | tr -s " " | cut -d " " -f 4;;
d|D) echo "Saliendo del programa";;
*) echo "Opcion no valida"
esac
done
# Tambien sirve esta opcion para el c --> awk 'NR==3 {print $4}' 
