#!/bin/bash

#	Clonamos el repo con el cual vamos a trabajar
G=$(which git)
M=$(which mv)
R=https://github.com/PabloCarrai/wp-c-wt.git
#	Clonamos el repo que vamos a usar
$G clone --quiet $R

C=$(find $PWD -type d -name wp-c-w*)
#	Renombramos la carpeta y la movemos al home
$M $C $HOME/$1 


