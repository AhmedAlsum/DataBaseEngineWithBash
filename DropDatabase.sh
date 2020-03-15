#!/bin/bash 
echo "Enter name of Database you want to Drop "
read dbname 
   
    if [[ -d "./Databases/$dbname" ]]
    then 
        
       sudo rm -r ./Databases/$dbname/
    else 
        echo "No Database with this name"   
    fi    
