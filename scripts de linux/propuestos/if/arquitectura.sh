#!/bin/bash

info_cpu=$(sudo lshw -C CPU 2>/dev/null | egrep '(anchura|width)')

echo "Información de la arquitectura de la CPU:"
echo "$info_cpu"
