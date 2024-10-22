#!/bin/bash

#	Clonamos el repo con el cual vamos a trabajar
G=$(which git)
R=https://github.com/PabloCarrai/wp-c-wt.git

$G clone --quiet $R

C=$(find $PWD -type d -name wp-c-w*)

mv $C $HOME/$1 
