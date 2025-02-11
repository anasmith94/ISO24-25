#!/bin/bash
#Autor: Ana Luisa Vargas Smith
#Fecha: 10/02/2025
#Script Fiveormore
clear


if [ $# -ne 2 ]; then
	echo "No son 2 "
	exit
fi

if [ -f $1 ]; then
	echo "Existe"
	exit
fi


if [ ! -d $2 ]; then
	echo "Directorio no existe"
	exit
fi

vacio=$(ls $2 | wc -l)
if [ $vacio -eq 0 ]; then
	echo "Directorio $2 vacio"
	exit
fi


	echo "Ana Luisa Vargas Smith"



for fichero in $2/*.txt; do
	lineas=$(cat $fichero | wc -l)
	if [ $lineas -ge 5 ]; then
		echo $fichero
		echo $fichero >> $1
		palabras=$(cat $fichero | wc -l)
		echo "El fichero original tiene $palabras palabras" > $fichero.q
		cat $fichero >> $fichero.q
	fi


done

num=$(cat $1 | wx -l)
echo "El fichero $1 tiene $num lineas" >> $1


