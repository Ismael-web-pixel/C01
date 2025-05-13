#!/bin/bash

read myfolder 

repertoire="$(ls $myfolder | wc -l)"


if [ "$repertoire" ]; then
echo "Le dossier "$myfolder" contient "$repertoire" fichier(s)."
fi