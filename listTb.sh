#!/bin/bash 
re='[a-zA-Z]'
  
    pwd
    if [ -d "../$dbname" ]; 
    then
            echo "database: $dbname"
            if [ -z "$(ls -A -- "../$dbname")" ];
            then
                echo "Empty Database"
            else
                for table in `ls -I "*.md" ../$dbname`
                do
                    echo "Tables are ""$table"
                done
            fi
        
    else
        
        echo "No Database Found"
        
    fi
    
