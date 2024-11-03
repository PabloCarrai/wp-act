#!/bin/bash

bash $(find . -type f -name cr.sh 2>/dev/null) 
bash $(find . -type f -name rc.sh 2>/dev/null) $1
