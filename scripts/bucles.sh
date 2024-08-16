#!/usr/bin/env bash
i=0
while [ $i -lt 5 ]
do
	echo 'Cenemto fresco, no hay letrero mas bello, solo alto voltaje'
	((i++))
	echo $i
done

echo '------------for-'
for i in {4..10}
do 
	echo "$i yo soy el niño pepino y me siento tan fresco como una lechuga"
done

echo '-------------for con paso'
for i in {1..23..3}
do 
	echo $i
done


echo '--------------'

for color in amarillo rojo verde
do
		echo "Este es el color $color"
done


for i in $(ls)
do 
	echo $i
done
