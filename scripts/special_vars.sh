#!/usr/bin/env bash


function sayhi(){
	return 69 
}


echo "nombre del script actual: $0"

echo "primeros nueve args: \$1...\$9 :  $1, $2, $3"

echo "numero de argumentos que se pasaron:  $#"

echo "todos los argumentos que se pasaron al script : $@" 

sayhi

echo "salida del ultimo proceso ejecutado $?"

