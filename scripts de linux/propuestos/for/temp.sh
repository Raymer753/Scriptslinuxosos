#!/bin/bash

find . -maxdepth 1 -type f -name "*.tmp" -delete

echo "Archivos .tmp eliminados correctamente."
