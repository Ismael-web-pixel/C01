#!/bin/bash

echo "Arguments initiaux : $@"
echo "Nombre d'arguments : $#"

shift

echo "Après le premier shift : $@"
echo "Nombre d'arguments : $#"
echo "Le nouvel argument 1 est : $1"

shift 2 # On peut aussi décaler de plusieurs positions à la fois

echo "Après le deuxième shift (de 2) : $@"
echo "Nombre d'arguments : $#"
echo "Le nouvel argument 1 est : $1"