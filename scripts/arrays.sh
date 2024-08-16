#!/usr/bin/env bash
declare -a array # array indexado
declare -A array2 # array asociativo
array=(joel otro valor xd)
echo "pos 1 : ${array[1]}"

echo '1------------'# for
for i in "${array[@]}"
do
	echo $i
done

echo '2------------'
 # rango
echo "${array[@]:0:1}"
echo "${array[@]:0:2}"
echo "${array[@]:0:3}"
echo "${array[@]:0:4}"


echo '3-------------'
unset array[1] # eliminamos un elemento
echo ${array[*]} # imprimir todos
echo '4-------------'
# numero de elementos 
echo ${#array[@]}


echo '4--------------'
# agregar elementos
array=(nuevo_elemento ${array[@]} ) # esto agrega un elemento al pricipio
echo ${array[*]}  

array=(${array[@]} algo) #eso agreega un elemento al final
echo ${array[*]} 

echo 'asociativos-------'                 
declare -A capital

capital=([UK]=london [Japan]=tokyo)
echo ${capital[*]}

# agregar datos
capital+=([Mexico]=DF [USA]=washington)
echo ${capital[*]}

echo ${capital[Mexico]}
# iterar sobre el arrey mostrando clave y valor
echo 'pais -> capital'
for country in "${!capital[@]}"
do 
	echo "$country -> ${capital[$country]}"
done
echo '...................'
