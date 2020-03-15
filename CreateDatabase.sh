#!bin/bash
re='[a-zA-Z]'
if [[ -d "./Databases" ]]
then 
    echo "Enter database name you want to create "
    read dbname
    if [[ $dbname =~ $re ]]
    then
        if [[ -d ./Databases/$dbname ]]
        then
            echo "Database already exists"
        else
            mkdir ./Databases/$dbname
        fi
    else 
        echo "Enter a vailed name for Database"
    fi    

else 
    mkdir ./Databases
fi    