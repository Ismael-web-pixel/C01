#!/bin/bash

a=$1
b=$2
op=$3

read a op b

# Tester l'opérateur
if [[ "$op" == "+" ]]; then
    result=$((a + b))
elif [[ "$op" == "-" ]]; then
    result=$((a - b))
elif [[ "$op" == "*" ]]; then
    result=$((a * b))
elif [[ "$op" == "/" ]]; then
    result=$((a / b))
else
    echo "Opérateur inconnu"
    exit 1
fi

# Afficher le résultat
echo "Résultat : $result"
