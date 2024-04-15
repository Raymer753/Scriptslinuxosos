#!/bin/bash

echo "---calculo de los segundos de vida de una persona---"
read -p "En que año naciste? (en formato YYYY-MM-DD)" fecha_nac
fecha_act=$(date +%s)
fecha_nacimiento=$(date -d "$fecha_nac" +%s)
diferencia_seg=$((fecha_act - fecha_nacimiento))

echo "Has vivido aproximadamente $diferencia_seg segundos"
