#!/bin/bash

version_kernel=$(uname -r)

echo "La versión del kernel es: $version_kernel"

version_principal=$(echo "$version_kernel" | cut -d '.' -f 1,2)

if [ "$(echo "$version_principal < 3.10" | bc)" -eq 1 ]; then
    echo "La versión del kernel es inferior a 3.10. Se recomienda actualizar el sistema."
else
    echo "La versión del kernel es 3.10 o superior. No es necesario actualizar el sistema."
fi
