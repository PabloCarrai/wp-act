#!/bin/bash

B=$(which bash)
F=$(which find)

$B $($F . -type f -name cr.sh 2>/dev/null) 
$B $($F . -type f -name rc.sh 2>/dev/null) $1
$B $($F . -type f -name cndb.sh 2>/dev/null) $1
$B $($F . -type f -name ccrdb.sh 2>/dev/null)
$B $($F . -type f -name ccwdb.sh 2>/dev/null)
$B $($F . -type f -name cne.sh 2>/dev/null)

