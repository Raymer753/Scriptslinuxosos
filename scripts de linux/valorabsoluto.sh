#!/bin/bash
echo "---Valor absoluto---"
echo "Pulsa s para salir"
read -p " Introduce número:" num
while [ $num != s ]
do
if [ $num -lt 0 ]; then
 echo " El valor absoluto es: `expr $num \* -1`"
else
 echo $num
fi
read -p "Introduce un numero:" num
done
