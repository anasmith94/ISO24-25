@echo 
::Script Directories.bat
::Autor Ana Luisa Vargas Smith
::20/11/2024
:menu 
set /p eleccion="Menu: [(1) crear archivo .txt] [ (2) mostrar_arbol] [ (3) mostrar_txt][ (4) crear_directorios] [(5)copiar_contenido]"

if %eleccion% == 1 goto crear_fichero
if %eleccion% == 2 goto mostrar_arbol
if %eleccion% == 3 goto mostrar_txt
if %eleccion% == 4 goto crear_directorios
if %eleccion% == 5 goto copiar_contenido 
if %eleccion% == 6 goto exit
if %seleccion% NEQ 1 goto err
if %seleccion% NEQ 2 goto err
if %seleccion% NEQ 3 goto err
if %seleccion% NEQ 4 goto err
if %seleccion% NEQ 5 goto err

:crear_fichero

set /p nombre="Introduzca el nombre del fichero (con extension): "
echo > %nombre%
echo fichero "%nombre%" 
pause
goto menu
exit

:mostrar_arbol
cls
echo Mostrando el árbol de directorios de la carpeta de usuario:
tree "%USERPROFILE%"
pause
goto menu
exit

:mostrar_txt
cls
echo Archivos con extensión .txt en la carpeta actual:
dir *.txt /b
pause
goto menu
exit

:crear_directorios
cls
mkdir alfredoff
mkdir marinapg
mkdir ramonam
echo Directorios "alfredoff", "marinapg" y "ramonam" creados en el directorio actual.
pause
goto menu
exit

:copiar_contenido
cls
xcopy "%USERPROFILE%\*" "%USERPROFILE%\Desktop" /E /H /C /I
echo Contenido copiado al Escritorio.
pause
goto menu
exit
:mostrar_arbol
cls
echo Mostrando el árbol de directorios de la carpeta de usuario:
tree "%USERPROFILE%"
pause
goto menu

:mostrar_txt
cls
echo Archivos con extensión .txt en la carpeta actual:
dir *.txt /b
pause
goto menu
exit

:crear_directorios
cls
mkdir alfredoff
mkdir marinapg
mkdir ramonam
echo Directorios "alfredoff", "marinapg" y "ramonam" creados en el directorio actual.
pause
goto menu
exit

:copiar_contenido
cls
xcopy "%USERPROFILE%\*" "%USERPROFILE%\Desktop" /E /H /C /I
echo Contenido copiado al Escritorio.
pause
goto menu
exit

:err
echo error
pause
exit