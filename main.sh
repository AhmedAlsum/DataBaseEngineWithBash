#!/bin/bash 
PS3="Enter your choice :"

select choice in "Create Database" "List Database" "Connect to DataBase" "Drop Database" "Exit"
do 
case $choice in 
        "Create Database" )
                . ./CreateDatabase.sh
                break
        ;;
        "List Database" )
                . ./listdatabases.sh
                break

        ;;
        "Connect to DataBase" )
                . ./connectDB.sh
                break

        ;;
        "Drop Database" )
                . ./DropDatabase.sh
                break

        ;;
        "Exit" )
        exit
        ;;

        * )
        echo "Invalid Choice"

        ;;
esac
done
 
