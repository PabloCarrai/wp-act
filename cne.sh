#!/bin/bash

F=$(which find)
M=$(which mv)

WP=$($F / -name .env-wp  2>/dev/null)
RUTAWP=$(dirname $WP)
$M $WP $RUTAWP/.env

WT=$($F / -name .env-wt  2>/dev/null)
RUTAWT=$(dirname $WT)
$M $WT $RUTAWT/.env

