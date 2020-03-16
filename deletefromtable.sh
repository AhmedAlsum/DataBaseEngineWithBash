#!/bin/bash

echo "Enter table name you want to delete from"
read tbname
if [[ -f ../$dbname/$tbname ]]
then 
    echo "Enter pk to delete"
    read pk
    line=$(awk -F'[ ]' -v id=$pk '{if ($1 == id){print NR;} }' ../$dbname/$tbname)
    if [ -n "$line" ]
        then
            sed -i "$line d" ../$dbname/$tbname
            
        else
            echo "Wrong id"
           
    fi
else
    echo "No table with this name "
        
fi


