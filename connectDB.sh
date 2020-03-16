#!/bin/bash 
PS3="Enter your choice :"
echo "Enter Database name you want to connect"
read dbname
if [[ -n $dbname ]]
then 
    if [[ -d "./Databases/$dbname" ]]
    then
        export $dbname
        cd  ./Databases/$dbname
        select choice in "Create Table" "List Tables" "Drop Table" "Insert into Table" "Select From Table" "Delete From Table" "Exit"
        do 
        case $choice in 
                "Create Table" )             
                      . ../../createTb.sh
                        break
                ;;
                "List Tables" )
                pwd
                    . ../../listTb.sh
                        break

                ;;
                "Drop Table" )
                        echo "ahmd"
                        break

                ;;
                "Insert into Table" )
                        echo "sdfsd"
                        break

                ;;
                "Select From Table" )
                        echo "sdfs"
                        break

                ;;
                "Delete From Table" )
                    echo "sdf"
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
    else
        echo "No Database with this name"
    fi        
else
    . ./connectDB.sh
fi
