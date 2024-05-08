#!/bin/bash

if [ $# -lt 4 ];then
 echo "debes introducir 4 parametros como minimo"
else
 echo $2
 echo $4
 echo $@
 echo $*
fi
