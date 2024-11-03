#!/bin/bash

#	Aca cambiamos los valores de las variables en un .env"
ORIG="MYSQL_DATABASE=wordpress"
REST="MYSQL_DATABASE=$1"
ORIG1="WORDPRESS_DB_NAME=wordpress"
REST1="WORDPRESS_DB_NAME=$1"
#	En este caso es en este archivo .env-wp"
FILE=$(find / -name .env-wp  2>/dev/null)


sed -i "s|${ORIG}|${REST}|g" "$FILE"
sed -i "s|${ORIG1}|${REST1}|g" "$FILE"

