#!/bin/bash
#Pobierz plik http://datko.pl/SO2/sensors.txt - najlepiej użyj programu wget z poziomu konsoli (składnia: wget <adres-pliku>). 
#Następnie napisz skrypt, który z całej zawartości tego pliku zwróci (wypisze na ekran) wszystkie wartości aktualnych temperatur
#(zwróć tylko i wyłącznie wartości z jednostkami; każdą wypisać w nowej linii). [poproszę o jedno, zmyślne wykonanie komendy awk z wyrażeniami regularnymi]

wget http://datko.pl/SO2/sensors.txt

awk '
{
	match( $0 , /\+([0-9]{1,3})\.([0-9])°C/ , vars )

	if (length(vars[0]) != 0) {
		printf vars[0] "\n"
	}
}
' sensors.txt