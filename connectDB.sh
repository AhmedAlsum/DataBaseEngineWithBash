#!/bin/bash 
PS3="Enter your choice :"
echo "Enter Database name you want to connect"
read dbname
if [[ -n $dbname ]]
then 
    if [[ -d "./Databases/$dbname" ]]
    then
        

        cd  ./Databases/$dbname
        echo $PWD
        select choice in "Create Table" "List Tables" "Drop Table" "Insert into Table" "Select From Table" "Delete From Table" "Exit"
        do 
        case $choice in 
                "Create Table" )
                        export dbname
                        echo "ahmed"
                        . ./createTb.sh
                        break
                ;;
                "List Tables" )
                    echo "sfsdf"
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
