@echo off 
::Práctica entregable.
::Autor Ana Luisa Vargas Smith.
::20/11/2024
set /p opcion=" opcion 1: txt opcion: bat "

if %opcion% equ 1 goto txt
if %opcion% equ 2 goto bat

:txt
rem pedir nombre y crear txt
set /p nombre="Introduzca un nombre "
echo > %nombre%.txt
pause

:bat
rem pedir nombre y crear carpeta
set /p nombre="introduzca un nombre "
echo > %nombre%.bat  

:final




