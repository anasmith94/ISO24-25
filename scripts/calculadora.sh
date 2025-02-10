#!/bin/bash
#Autor: Ana Luisa Vargas Smith
#Fecha: 04/02/2025
#Calculadora


	echo " Autor: Ana Luisa Vargas Smith "


	read -p "Operación Op1 Op2" op op1 op2


	echo "S = SUMAR"
	echo "R = resta"
	echo "M = multiplicar"
	echo "D = dividir"
	echo "X = salir"
	while true do
	case $op in

		"S")
			sum=$((op1+op2))
			echo $sum
			echo $op $op1 $op2 >> $1
		;;
		"R")
			res=$((op1-op2))
			echo $res
			echo $op $op1 $op2 >> $1
		;;
		"M")
			mult=$((op1*op2))
			echo $mult
			echo $op $op1 $op2 >> $1
		;;

		"D")

			div=$((op1/op2))
			echo $div
			echo $op $op1 $op2 >> $1
		;;

		"X")
			echo"salir"
		break

		;;
	esac


 done
