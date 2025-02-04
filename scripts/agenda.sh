#!/bin/bash
#Autor: Ana Luisa Vargas Smith
#Fecha: 03/02/2025
#Ejercicio Agenda


while true; do

	echo " a) Añadir una entrada."
	echo " b) Buscar por dni"
	echo " c) Ver la agenda completa"
	echo " d) Eliminar todas las entradas de la agenda "
	echo " e) Finalizar"

	read -p  "Elija una opcion " op

	case $op in

	a)
		read -p "Dime DNI " dni
		if  grep "^$dni:" agenda.txt >/dev/null; then
			echo "Usuario ya existente"

		else
			read -p "Dime un nombre" nombre
			read -p "Dime apellidos" apellido
			read -p "Dime localidad" localidad
			echo $dni:$nombre:$apellido:$localidad >> agenda.txt


	fi
	;;

	b)

		read -p "Dime DNI " dni
		if grep "^$dni" agenda.txt >/dev/null; then
			nombre=$(grep $dni agenda.txt | cut -d ":" -f 2)
			apellidos=$(grep $dni agenda.txt | cut -d ":" -f 3)
			localidad=$(grep $dni agenda.txt | cut -d ":" -f 4)
			echo "La persona con Dni número $dni es: $nombre $apellidos, y vive en $localidad"

		else
			echo "Error"

		fi
	;;


	c)
		echo "mostrar archivo"
		if [ -s agenda.txt ]; then
			cat agenda.txt
		else
			echo "Agenda vacia"

		fi
	;;

	d)
		echo " Borrar contenido de agenda "
		>  agenda.txt

	;;


	e)
		echo " Salir"
		break
	;;

	*)
		echo "Opcion no valida"
	;;
esac

done

