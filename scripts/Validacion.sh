#!/bin/bash

programas=("git" "node" "npm" "curl" "jq")
archivos=("../.env.example" "../.gitignore"  "../package.json")

for programa in "${programas[@]}"; do
    # Comprueba si el programa existe en el sistema command busca el ejecutable
    if command -v "$programa" &> /dev/null; then
        echo "$programa está instalado."
    else
        echo "$programa NO está instalado."
    fi
done


for archivo in "${archivos[@]}"; do
	# -e comprueba si es un archivo o archivo sin que importe el tipo
    if [ -e "$archivo" ]; then
        echo "El archivo '$archivo' existe."
    else
        echo "El archivo '$archivo' NO existe."
    fi
done

exit 0