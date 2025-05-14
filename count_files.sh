#!/bin/bash


read myfolder  # Lit le nom du dossier saisi par l'utilisateur et le stocke dans la variable "myfolder"

repertoire="$(ls $myfolder | wc -l)" # Compte le nombre de fichiers/éléments dans le dossier

# Vérifie si la variable "repertoire" contient une valeur (donc si le dossier a été trouvé et qu'il contient des fichiers)
if [ "$repertoire" ]; then
    # Affiche le nombre de fichiers dans le dossier saisi
    echo "Le dossier "$myfolder" contient "$repertoire" fichier(s)."
fi