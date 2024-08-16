#!/usr/bin/env bash

function mi_primera_funcion(){
	echo hola mundo
	echo asdasdad
}
mi_primera_funcion

function sumar(){
	return $(($1 + $2))
}

sumar 12 3

echo $?
