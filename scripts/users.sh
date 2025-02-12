#!/bin/bash
#Autor: Ana Luisa Vargas Smith
#Fecha: 11/02/2025
#Practica Users

clear

IFS=:
	date=$(date +"28-12-2021 17:58")
	echo "Informe de usuarios el dia $date"

while read us x uid gid d h shell; do
	if [ $uid -ge 1000 ]; then
	echo "$us - $uid"
	contador=$((contador + 1))
	fi

done < /etc/passwd

	echo "Total: $contador usuarios"
	echo ""

	us_auditor1=$(whoami)

echo "$date El usuario $us_auditor1 ha solicitado un informe de usuarios. script bin bash"  > /tmp/logoventos
