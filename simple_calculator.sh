#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Utilisation : ./simple_calculator.sh nombre1 nombre2 opérateur"
    echo "Exemple : ./simple_calculator.sh 4 2 +"
    exit 1
fi

a=$1
b=$2
op=$3

# Tester l'opérateur
if [[ "$op" = "+" ]]; then
    result=$((a + b))
elif [[ "$op" = "-" ]]; then
    result=$((a - b))
elif [[ "$op" = "*" ]]; then
    result=$((a * b))
elif [[ "$op" = "/" ]]; then
    if [ "$b" -eq 0 ]; then
        echo "Erreur : Division par zéro impossible"
        exit 1
    fi
    result=$((a / b))
else
    echo "Opérateur inconnu"
    exit 1
fi

# Afficher le résultat
echo "Résultat : $result"
