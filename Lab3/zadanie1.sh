#!/usr/bin/env bash
#Zadanie 25.
# Napisz skrypt, który wyświetli nazwy wszystkich dowiązań 
# symbolicznych z danego katalogu (parametr wywołania skryptu), 
# które wskazują na określone miejsce w systemie plików (parametr wywołania skryptu). 


if [ "$#" != "2" ]; then
    echo "Skrypt należy uruchomić z dwoma parametrami."
    exit 1
fi

for file in $(ls $1); do
    if [ -h $1/$file ]; then

        if [ $(readlink $1/$file) -ef $2 ]; then
            echo $file
        fi
    fi
done
