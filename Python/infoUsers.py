"""
Autor: Ana Luisa Vargas Smith
Fecha: 25/03/2025
Ejercicio: infoUser.py
"""
import os
import cpuinfo as cpu

while True:
    print("1-Muestra informacion del SSOO e informacion de la CPU")
    print("2-Se pedira un usuario. Si esxiste, se mostrara la informacion sobre el,si no, se crea")
    print("3-Se pedira un directorio, se comprobara si existe y si es directorio, en caso contrario, se creara.")
    print("4-Salir")
    opc=int(input("Dime una opcion: "))

    match opc:
        case 1:
             print(os.uname(), cpu.get_cpu_info()["brand_raw"])

        case 2:
            usr=(input("Dime un usuario: "))
            fich=open("/etc/passwd","r")
            contenido=fich.readlines()
            enc=0
            for i in contenido:
                if i.split("0")[0] == usr:
                    enc=1
                    final=i
                    break
                if enc == 1:
                    print(final)
                else:
                    print("Usuario no encontrado")
                    os.system("useradd " +usr)
                    break




        case 3:
            dir=(input("Dime un directorio: "))
            if os.path.exists(dir):
                if os.path.isdir(dir):
                    print("El directorio",dir,"existe")
                else:
                    print("Existes pero no es un directorio")
            else:
                os.mkdir(dir)
                print("Directorio creado correctamente")
        case 4:
            print("salir")
            break

        case _:
            print("error")