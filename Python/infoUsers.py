"""
Autor: Ana Luisa Vargas Smith
Fecha: 25/03/2025
Ejercicio: infoUser.py
"""
import os
import cpuinfo

while True:
    print("1-Muestra informacion del SSOO e informacion de la CPU")
    print("2-Se pdira un usuario. Si esxiste, se mostrara la informacion sobre el,si no, se crea")
    print("3-Se pedira un directorio, se comprobara si existe y si es directorio, en caso contrario, se creara.")
    print("4-Salir")
    opc=int(input("Dime una opcion: "))

    match opc:
        case 1:
             print(os.uname(), cpu.get_cpu_info()["brand_raw"])

        case 2:
            usr=(input("Dime un usuraior: "))



        case 3:
            dir=(input("Dime un directorio: "))


        case 4:
            print("salir")
            break

        case _:
            print("error")