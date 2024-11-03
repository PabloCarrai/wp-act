#!/bin/bash

TAM=$(( RANDOM % 25+15 ))
CLAVE=$(openssl rand -base64 $TAM)
ORIG="MYSQL_ROOT_PASSWORD=rootpress"
REST="MYSQL_ROOT_PASSWORD=$CLAVE"

FILE=$(find / -name .env-wp  2>/dev/null)

sed -i "s|${ORIG}|${REST}|g" "$FILE" 
