#!/usr/bin env bash

if [[ $1 -gt $2 ]]
then 
	echo 'true'
else 
	echo 'false'
fi


echo '----------------'
# condicional en una linea
[ $1 -eq 5 ] && echo 'es cinco' || echo 'no es cinco'


echo '------------------'
# asignar condicionalmente

((myvariable = $1>2?10:20)) && echo $myvariable


