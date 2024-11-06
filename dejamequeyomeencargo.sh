#!/bin/bash

#	Simplificamos dos variables que usaremos luego
B=$(which bash)
F=$(which find)
#	Aca viene el orden de como corren los script
#	Clonamos un repo que usaremos
$B $($F . -type f -name cr.sh 2>/dev/null)
# 	Aca renombramos la carpeta del proyecto en el home del usuario
$B $($F . -type f -name rc.sh 2>/dev/null) $1
#	Sobre los .env generamos las claves aleatorias
$B $($F . -type f -name cndb.sh 2>/dev/null) $1
#	Igual pero para otra variable
$B $($F . -type f -name ccrdb.sh 2>/dev/null)
#	Seguimos haciendo algo parecido
$B $($F . -type f -name ccwdb.sh 2>/dev/null)
#	Aca renombramos los .env
$B $($F . -type f -name cne.sh 2>/dev/null)

