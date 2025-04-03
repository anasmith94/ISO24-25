"""
Autor: Ana Luisa Vargas Smith
Fecha:31/03/2025
Ejercicio: DirFile.py
"""
import shutil
import os

directorios=[]
archivos=[]

fich=open("rutas.txt","r")

for i in fich:
    r = i.strip()
    if os.path.isfile(r):
        archivos.append(r)
    elif os.path.isdir(r):
        directorios.append(r)

while True:
    print("1-Dime un nombre de fichero para eliminarlo")
    print("2-Dime un nombre de directorio para mostrar su informacion")
    print("3-Dime un nombre de fichero, nombre de destino para copiarlo en dicho destino")
    print("4-Mostrar lista elegido")
    print("5-Salir")

opc=input("Elige una opcion: ")

match opc:

    case 1:
        fichero=input("Dime un fichero: ")
        if os.path.isfile(fichero):
            os.remove(fich)
            print("Se ha eliminado el fichero correctamente. ")
        else:
            print("El fichero", fichero,"no es un fichero. ")


    case 2:
        directorio=input("Dime un directorio: ")
        if os.path.isdir(directorio):
            contenido=os.listdir(directorios)
            print("Su contenido es: ",contenido)
        else:
            print("El directorio",directorio,"no existe ")

    case 3:
        fichero=input("Dime un fichero: ")
        destino=input("Dime un destino: ")
        if os.path.isfile(fichero):
            shutil.copy(fichero,destino)
            print("Opcion realizada correctamente. ")
        else:
            print("fichero o destino incorrecto. ")
    case 4:
        lista=input("Dime una lista para mostrar.").lower()
        if lista == "archivos":
            print("Lista de archivos: {archivos}")
        elif lista == "directorios":
            print("Lista de directorios : {directorios}")

        else:
            print("Error dime otro archivo o directorio")


    case 5:
            print("Saliendo del programa, Adios. ")


    case _:
            print("Error")

