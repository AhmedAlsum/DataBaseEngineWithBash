#!/bin/bash
re='[a-zA-Z]'
echo "Enter Table name you want to drop:"
read tbname
    if [[ -f $tbname ]]
    then 
        if [[ $tbname =~ $re ]]
        then 
            rm $tbname
            rm $tbname.md
            echo "$tbname deleted"
        else
            echo "not valid table name"
            . ../../droptb.sh 
        fi 
    else
        echo "no table with this name" 
       . ../../droptb.sh      
    fi        