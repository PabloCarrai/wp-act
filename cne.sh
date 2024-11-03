#!/bin/bash

#	Renombramos los archivos de enviroment en ambos proyectos
F=$(which find)
M=$(which mv)
#	Aca modificamos el .env-wp para que se llame .env
WP=$($F / -name .env-wp  2>/dev/null)
RUTAWP=$(dirname $WP)
$M $WP $RUTAWP/.env
#	Y aca de .env-wt a .env
WT=$($F / -name .env-wt  2>/dev/null)
RUTAWT=$(dirname $WT)
$M $WT $RUTAWT/.env

