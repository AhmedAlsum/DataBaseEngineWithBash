#!/bin/bash
echo -n "Enter table name you want to insert into : "
read tbname
while true 
do
    if [[ -f $tbname && -n $tbname ]]
    then 
        break;
    else 
        echo  "No table with this name in your DB"
        . ../../insertintotable.sh
    fi
done
noofcolumns=($(awk '{if(NR>2)print $1;}' $tbname.md | wc -l))
nameofcolumns=($(awk '{if(NR>2)print $1;}' $tbname.md))
i=0
row=()
while ((i<noofcolumns))
do
    echo "insert ${nameofcolumns[i]}"
    read input 
    if [[ -n $input ]]
    then 
        value=$(awk -F"[ ]" -v key=$input '{if ($1 == key)print $0;}' $tbname)
        if [[ -n $value ]]
        then 
            echo "Enter Vailed data"
        else 
            row[i]=$input
        fi    
    fi
    ((i++))
done



echo "${row[*]}" >> $tbname


