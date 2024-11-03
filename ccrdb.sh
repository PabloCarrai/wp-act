#!/bin/bash

#	Genero una clave aleatoria
TAM=$(( RANDOM % 25+15 ))
CLAVE=$(openssl rand -base64 $TAM)
ORIG="MYSQL_ROOT_PASSWORD=rootpress"
REST="MYSQL_ROOT_PASSWORD=$CLAVE"
#	Canbio las variables en un archivo usando la clave"
FILE=$(find / -name .env-wp  2>/dev/null)

sed -i "s|${ORIG}|${REST}|g" "$FILE" 
