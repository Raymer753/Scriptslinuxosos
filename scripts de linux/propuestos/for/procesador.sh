#!/bin/bash

# Ejecutar lshw y buscar la línea que contiene la información de la CPU
info_cpu=$(lshw -C CPU 2>/dev/null | grep "width")

# Extraer la información de la arquitectura en bits del procesador
arquitectura=$(echo "$info_cpu" | awk '{print $2}')

# Mostrar la arquitectura en bits del procesador
echo "Arquitectura del procesador: $arquitectura bits"
