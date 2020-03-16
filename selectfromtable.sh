#!/bin/bash
echo "select table name :"
read tbname
if [[ -n $tbname && -f $tbname ]]
then 
    cat ./$tbname
else 
    echo "No table with this name"
 fi   