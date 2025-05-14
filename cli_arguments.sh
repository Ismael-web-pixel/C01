#!/bin/bash

# Vérifier s'il y a au moins un argument
if [ $# -eq 0 ]; then
    echo "Aucun argument fourni."
    echo "Utilisation : ./print_args.sh arg1 arg2 ..."
    exit 1
fi

# Affichage des arguments un par un
count=1
for arg in "$@"
do
    echo "Argument $count: $arg"
    count=$((count + 1))
done
