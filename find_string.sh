#!/bin/bash

read cafe  # Demande à l'utilisateur d'entrer le nom d'un fichier (stocké dans la variable "cafe")
read chaine  # Demande à l'utilisateur d'entrer la chaîne à rechercher (stockée dans "chaine")

# Utilise grep avec -q (quiet) pour vérifier si la chaîne existe dans le fichier
if grep -q "$chaine" "$cafe"; then
    # Si la chaîne est trouvée, affiche un message de succès
    echo "La chaîne '$chaine' a été trouvée dans $cafe."
else
    # Sinon, affiche un message d’échec
    echo "La chaîne '$chaine' n'a pas été trouvée dans $cafe."
fi