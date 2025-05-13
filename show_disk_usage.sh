#!/bin/bash

echo "--- Utilisation de l'espace disque (tous les systèmes de fichiers) ---"
df -h
echo "-------------------------------------------------------------------"


if [ "$utilisation" -ge "$seuil_utilisation" ]; then
  echo -e "\n AVERTISSEMENT : L'utilisation de la partition '$partition_a_verifier' a atteint ou dépassé $utilisation% !"
fi

# Optionnel : Afficher également la taille du répertoire courant de manière lisible
echo -e "\n--- Taille du répertoire courant ---"
du -sh .
echo "-------------------------------------"