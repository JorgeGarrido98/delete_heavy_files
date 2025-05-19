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
			echo "Elinamos $archivo porque ocupa más de 1MB"
			rm $archivo
			echo -e "\n"
		fi
	fi
done
