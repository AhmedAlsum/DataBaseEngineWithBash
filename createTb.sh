#!/bin/bash
re='[a-zA-Z]'
#number ="[0-9]"
col_names=()
echo "Enter Table name :"
read tbname
    if [[ -f $tbname ]]
    then 
        echo "Table exists"
        . ../../createTb.sh 
    else 
        if [[ $tbname =~ $re ]]
        then 
            touch $tbname
            touch $tbname.md
        else
            echo "not valid table name"
        fi    
    fi        

echo "Enter Number of Columns :"
read colnums
if [[ $colnums -gt 0 && $colnums =~ ^[0-9]+$ ]]
then 
    echo "Enter primary key col name"
    read colname
    if [[ $colname =~ $re ]]
    then 
        col_names[0]=$colname
    else
        echo "Enter vailed col name "
    fi
    echo "$colname">> $tbname.md
else 
    echo "Enter Vailed number"    
fi    


