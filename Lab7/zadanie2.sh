#!/bin/bash
#
#
# Proszę opracować skrypt, który przy pomocy wyrażeń regularnych wykona odpowiednie akcje na podanych plikach 
# (można je uprzednio pobrać na dysk lub ładować bezpośrednio z sieci wewnątrz skryptu - dowolnie). Proszę:
# a) wczytać plik http://datko.pl/SO2/qemu-io.c i wyświetlić jego treść, modyfikując w locie format ładowanych rozszerzeń z .h na .hpp,
# b) wczytać plik http://datko.pl/SO2/cpp.txt i wyświetlić jego treść, pomijając przy tym 
# wszystkie znaczniki języka HTML (włącznie z atrybutami! <p class=”a”>tekst</p> → tekst),
# c) wczytać plik http://datko.pl/SO2/tox.ini i odnaleźć wszystkie definicje zmiennych 
# w kluczach setenv – wyświetlić jakie unikalne nazwy pojawiają się w pliku,
# d) wyposażyć skrypt w rozsądną obsługę błędów, takich jak na przykład nieistniejące pliki wejściowe.

# D
if [ ! -e qemu-io.c ]; then
	echo "Plik qemu-io.c nie istnieje."
	exit 1
fi
if [ ! -e cpp.txt ]; then
	echo "Plik cpp. nie istnieje."
	exit 1
fi
if [ ! -e tox.ini ]; then
	echo "Plik tox.ini nie istnieje."
	exit 1
fi

# A
awk '
BEGIN { var="" }
{
	var=gensub( /\.h/, "\.hpp", "g", $0 )
	print var "\n"
}
' qemu-io.c

# B
awk '
BEGIN { var="" }
{
	var=gensub( /<[^>]*>/, "", "g", $0 )
	print var "\n"
}
' cpp.txt

# C 
awk '
{
    if($0 ~ /setenv/)
    {
        getline
        while($0 !~ / =/)
        {
            if($0 in array == 0)
            {
                print 
                array[$0]
            } 
            getline;
        }
    }
} 
' tox.ini
