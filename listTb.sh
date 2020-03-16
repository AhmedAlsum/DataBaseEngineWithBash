#!/bin/bash 
re='[a-zA-Z]'
  
    
    if [ -d "../$dbname" ]; 
    then
            echo "database: $dbname"
            if [ -z "$(ls -A -- "../$dbname")" ];
            then
                echo "Empty Database"
            else
                echo "Tables :" 
                for table in `ls -I "*.md" ../$dbname`
                do
                    echo "$table"
                done
            fi
        
    else
        
        echo "No Database Found"
        
    fi
    
