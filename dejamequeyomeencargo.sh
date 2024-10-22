#!/bin/bash

#	Clonamos el repo con el cual vamos a trabajar
G=$(which git)
M=$(which mv)
F=$(which find)
H=$HOME/$1
R=https://github.com/PabloCarrai/wp-c-wt.git
#	Clonamos el repo que vamos a usar
$G clone --quiet $R
#	Busco la carpeta del proyecto y va a una variable
C=$($F $PWD -type d -name wp-c-w*)
#	Renombramos la carpeta y la movemos al home
$M $C $H
