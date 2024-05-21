#!/bin/bash

for archivo in *.sh; do
    chmod +x "$archivo"
done

echo "Archivos .sh hechos ejecutables correctamente."
