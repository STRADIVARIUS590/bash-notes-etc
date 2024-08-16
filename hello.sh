#!/usr/bin/env bash
whom_variable="world"
printf "hello %s\n" "$whom_variable"
echo "who are you?"
read name
echo "hello, $name"
echo "What are you doing?"
read action
echo "You are ${action}gando :v"
