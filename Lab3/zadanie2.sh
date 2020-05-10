#!/usr/bin/env bash
#zadanie 32
#Napisz skrypt, który dla wszystkich plików wykonywalnych z jakiegoś katalogu 
#(parametr wywołania skryptu) utworzy dowiązania twarde w drugim katalogu (parametr wywołania skryptu), 
#zaś dla podkatalogów utworzy on dowiązania miękkie. Dodatkowo:
#a) skontroluj liczbę argumentów i uprawnienia do odpowiednich elementów systemu plików,
#b) nie twórz nowego dowiązania, jeżeli w drugim katalogu istnieje już dowiązanie 
#twarde (wcześniej zakładaliśmy, że na pewno nie istnieje)
#c) zadbaj o to, żeby dowiązania symboliczne były stworzone względem katalogu roboczego (pwd)
#d) w przypadku podkatalogów pierwszego danego katalogu, utwórz odpowiednie 
#dowiązania do plików z tych podkatalogów w drugim danym katalogu (załóż, że nazwy plików są unikalne)

# A Kontrola liczby argumentów
if [ "$#" != "2" ]; then
    echo "Skrypt należy uruchomić z dwoma parametrami."
    exit 1
fi

# A kontrola uprawnień
if [ ! -d $1 ] || [ ! -r $1 ] || [ ! -d $2 ] || [ ! -w $2  ] || [ ! -r $2  ]; then
	echo "Brak wystarczających uprawnień lub ściezka nie wskazuje na katalog!"
	exit 1
fi

first_dir=$1
second_dir=$2

for file in $(ls $first_dir); do

		# B nie twórz nowego dowiązania jeśli już istnieje
		if [ ! -h $second_dir/$file ]; then
    		
    		if [ -x $first_dir/$file ]; then
    			ln $(realpath $first_dir/$file) $second_dir/$file
    		fi

    		if [ -d $first_dir/$file ]; then
    			ln -s $(realpath $first_dir/$file) $second_dir/$file
    			
    			# D dowiązania plików z podkatalogów pierwszego do katalogu drugieg
    			for  x in $(ls $first_dir/$file); do
    				ln -s $(realpath $first_dir/$file) $second_dir/$x
    			done
    		fi
    	fi
done