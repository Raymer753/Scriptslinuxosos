#!/bin/bash

egrep -i '(vmx|svm)' /proc/cpuinfo >/dev/null

if [ $? -eq 0 ]; then
    echo "El sistema admite virtualización por hardware."
else
    echo "El sistema no admite virtualización por hardware."
fi
