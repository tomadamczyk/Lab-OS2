#!/bin/bash
#
#Napisz skrypt, który zaszyfruje (szyfr cezara; program tr) każdy plik obecny w podanym miejscu
# systemu plików (parametr wywołania skryptu). Uwzględnij wszystkie możliwe podkatalogi
#wskazanego miejsca oraz upewnij się, że podmiot uruchamiający skrypt ma odpowiednie prawa do
#szyfrowanych plików. Wyświetl na ekranie i zapisz do pliku ścieżki do szyfrowanych plików.

path=$1

find $path -type f -perm 644 | tee /dev/tty | while read var
do	
	cat $var | tr [a-z] [x-za-w]  > temp_file
	cat temp_file > $var
done

# usuń plik pomocniczy
rm temp_file
