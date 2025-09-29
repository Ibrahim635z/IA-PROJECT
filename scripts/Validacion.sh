#!/bin/bash

programas=("git" "node" "npm" "curl" "jq")
archivos=("C:\Users\chakr\Documents\semana01\.env.example" "C:\Users\chakr\Documents\semana01\.gitignore"  "C:\Users\chakr\Documents\semana01\package.json" "C:\Users\chakr\Documents\semana01\src" "C:\Users\chakr\Documents\semana01\src")

for programa in "${programas[@]}"; do
    # Comprueba si el programa existe en el sistema, command busca el ejecutable
    if command -v "$programa" > /dev/null 2>&1; then
        version=$($programa --version)
        echo "$programa $version está instalado."
    else
        echo "$programa NO está instalado."
    fi
done


for archivo in "${archivos[@]}"; do
	# -e comprueba si es un archivo o un directorio sin que importe el tipo
    if [ -e "$archivo" ]; then
        echo "El archivo '$archivo' existe."
    else
        echo "El archivo '$archivo' NO existe."
    fi
done

exit 0