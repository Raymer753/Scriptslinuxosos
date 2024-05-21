#!/bin/bash

grep -E 'vmx|svm' /proc/cpuinfo >/dev/null

if [ $? -eq 0 ]; then
    echo "El procesador es compatible con la virtualización de sistemas de 64 bits."
else
    echo "El procesador no es compatible con la virtualización de sistemas de 64 bits."
fi

