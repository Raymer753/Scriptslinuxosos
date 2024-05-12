#!/bin/bash

while [ $opc != "x" ]
do
echo "a)Mostrar particiones"
echo "b)Ocupacion de las particiones"
echo "c)Memoria fisica libre"
echo "d)Espacio ocupado por los directorios"
echo "e)Version del sistema operativo"
echo "x)salir"
echo "pulsa una opcion"
read opc
case $opc in
a|A) sudo fdisk -l | grep "\/";;
b|B) sudo df -h;;
c|C) free -h | awk 'NR==2{print $1"\t"$3}';;
d|D) du -h;;
e|E) lsb_release -d;; 
x|X) echo "Saliendo";;
esac
done 
