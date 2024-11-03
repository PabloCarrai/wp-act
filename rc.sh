#!/bin/bash

# 	Renombrando carpeta del proyecto
M=$(which mv)
F=$(which find)
B=$(which bash)
H=$HOME/$1

#       Busco la carpeta del proyecto y va a una variable
C=$($F $PWD -type d -name wp-c-w*)
#       Renombramos la carpeta y la movemos al home
$M $C $H
