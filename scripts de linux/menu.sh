#!/bin/bash

while [ "$opc" != "x" ]
do
echo "De estas opciones elige una para realizar:"
echo "a -> lista los archivos"
echo "b -> muestra la fecha"
echo "c -> muestra el calendario"
echo "x -> Deten el programa"
read -p "Introduce la opcion deseada:" opc
case $opc in
a|A)ls -l;;
b|B)date;;
c|C)cal;;
x|X) echo "Deteniendo el programa";;
*) echo "No has introducido una opcion valida";;
esac
done
