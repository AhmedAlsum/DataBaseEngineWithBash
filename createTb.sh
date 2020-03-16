#!/bin/bash
re='[a-zA-Z]'
#number ="[0-9]"
col_names=()
echo "Enter Table name :"
read tbname
    if [[ -f $tbname ]]
    then 
        echo "Table exists"
        . ../../createTb.sh 
    else 
        if [[ $tbname =~ $re ]]
        then 
            touch $tbname
            touch $tbname.md
        else
            echo "not valid table name"
        fi    
    fi        

echo "Enter Number of Columns :"
read colnums
if [[ $colnums -gt 0 && $colnums =~ ^[0-9]+$ ]]
then 
    echo "Enter primary key col name"
    read colname
    if [[ $colname =~ $re && -n $tbname ]]
    then 
        col_names[0]=$colname
    else
        echo "Enter vailed col name "

    fi
    echo "Nubmer of Columns :""$colnums" >>$tbname.md
   # echo "Names of columns : ""$colname" >>$tbname.md
    echo "$colname">> $tbname.md
else 
    echo "Enter Vailed number"    
fi  

i=1
while((i<$colnums))
do
    echo "Enter your next col name"
    read colname
    if [[ $colname =~ $re && -n $tbname ]]
    then 
        name[i]=$colname
    fi
    
    echo "$colname">> $tbname.md
    ((i++))  
done
      



