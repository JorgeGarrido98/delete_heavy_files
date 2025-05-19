#!/bin/bash

# File title
echo -e "\n"
echo "============================================="
echo "          SCRIPT DELETE HEAVY FILES          "
echo "============================================="
echo -e "\n\n\n"

# Code
archivos=$(ls)

for archivo in $archivos
do
        if [ -f "$archivo" ]; then
                espacio=$(du -b "$archivo" | awk '{print $1}')
                echo "El archivo $archivo ocupa $espacio bytes"

                if [ "$espacio" -gt 1000000 ]; then
                        echo "El archivo $archivo ocupa más de 1MB"
                        read -p "¿Desea eliminarlo? (S/N): " confirmacion
                        if [ "$confirmacion" = "s" ] || [ "$confirmacion" = "S" ]; then
                                rm $archivo
                                echo "Archivo $archivo eliminado."
                        else
                                echo "Archivo $archivo conservado."
                        fi
                        echo -e "\n"
                fi
        fi
done
