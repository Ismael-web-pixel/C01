#!/bin/bash

read cafe 
read chaine

if grep -q "$chaine" "$cafe"; then
    echo "La chaîne '$chaine' a été trouvée dans $cafe."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $cafe."
fi