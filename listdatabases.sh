#!/bin/bash
if [ -z "$(ls -A "./Databases")" ]
then
    echo "No Databases Found" 
    

else 
    for db in `ls ./Databases`
    do 
        echo $db
    done
fi    