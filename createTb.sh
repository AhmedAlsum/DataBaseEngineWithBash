#!/bin/bash
re='[a-zA-Z]'
echo "Enter Table name :"
read tbname
    if [[ -f $tbname ]]
    then 
        echo "Table exists"
    else 
        if [[ $tbname =~ $re ]]
        then 
            touch $tbname
            touch $tbname.md
        else
            echo "not valid table name"
        fi    
    fi        