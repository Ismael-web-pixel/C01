#!/bin/bash

# Si un chemin est fourni, on l’utilise. Sinon, on prend le dossier courant.
chemin="${1:-.}"

# Vérifie si le chemin existe
if [ ! -e "$chemin" ]; then
  echo "Erreur : le chemin '$chemin' n'existe pas."
  exit 1
fi

echo "=== Utilisation générale du disque (toutes les partitions) ==="
df -h

echo
echo "=== Taille du dossier '$chemin' ==="
du -sh "$chemin"
