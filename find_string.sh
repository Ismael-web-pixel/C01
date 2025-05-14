#!/bin/bash

chaine=$1
fichier=$2

if [ ! -f "$fichier" ]; then
    echo "Erreur : le fichier '$fichier' n'existe pas."
    exit 1
fi
# Rechercher la chaîne avec grep
grep --color=always -n "$chaine" "$fichier"

# Vérifier si grep a trouvé quelque chose
if [ $? -ne 0 ]; then
    echo "La chaîne '$chaine' n'a pas été trouvée dans le fichier '$fichier'."
fi