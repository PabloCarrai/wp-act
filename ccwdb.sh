#!/bin/bash

#	Genero una clave aleatoria que luego uso en el script
TAM=$(( RANDOM % 25+15 ))
CLAVE=$(openssl rand -base64 $TAM)
ORIG="WORDPRESS_DB_PASSWORD=wordpress"
REST="WORDPRESS_DB_PASSWORD=$CLAVE"
ORIG1="MYSQL_PASSWORD=wordpress"
REST1="MYSQL_PASSWORD=$CLAVE"
#	La idea es modificar las variables anteriores en este archivo"
FILE=$(find / -name .env-wp  2>/dev/null)

sed -i "s|${ORIG}|${REST}|g" "$FILE"
sed -i "s|${ORIG1}|${REST1}|g" "$FILE"
