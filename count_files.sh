#!/bin/bash

repertoire="$(ls | wc -l)"

myfolder="C01"

if [ "$repertoire" ]; then
echo "Le dossier "$myfolder" contient "$repertoire" fichier(s)."
fi