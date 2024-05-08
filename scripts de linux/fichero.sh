#!/bin/bash

if [ -e $1 -a -r $1 ];then

echo "El archivo existe y tiene permiso de escritura"

else if [ -e $1 ];then

echo "El fichero existe pero no tiene permiso de escritura"

else

echo "El fichero no existe"

fi
fi
