#!/bin/bash

a=$1   # Stocke le premier argument passé en ligne de commande dans la variable 'a'
b=$2   # le deuxième argument dans 'b'
op=$3   # le troisième argument (l'opérateur) dans 'op'

# Redemande à l'utilisateur d'entrer a, b et op via le clavier (écrase les valeurs de $1, $2, $3)
read a b op

# Vérifie si l'opérateur est "+"
if [ "$op" = "+" ]; then
    result=$(($a + $b))  # Addition
elif [ "$op" = "*" ]; then
    result=$(($a * $b))  # Multiplication
elif [ "$op" = "-" ]; then
    result=$(($a - $b))  # Soustraction
elif [ "$op" = "/" ]; then
    result=$(($a / $b))  # Division (entière)
fi
echo "Résultat : $result"  # Affiche le résultat final
