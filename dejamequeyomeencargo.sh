#!/bin/bash

bash $(find . -type f -name cr.sh 2>/dev/null) 
bash $(find . -type f -name rc.sh 2>/dev/null) $1
bash $(find . -type f -name cndb.sh 2>/dev/null) $1
bash $(find . -type f -name ccrdb.sh 2>/dev/null)

