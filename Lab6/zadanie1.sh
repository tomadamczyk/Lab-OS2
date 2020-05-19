#!/bin/bash
#Napisz skrypt, który będzie ostrzegał przed przegrzaniem się podzespołów, analizując wynik działania komendy sensors (jeżeli tego programu brakuje, posłuż się zawartością pliku datko.pl/SO2/sensors.txt).
#Skrypt ma wyświetlić czujniki, których obecna temperatura przekracza ustaloną wartość (dowolną). [poproszę o jedno, zmyślne wykonanie komendy awk]

sensors | awk '
{
	match( $0 , /\+([0-9]{1,3})\.([0-9])/ , vars )

	if (vars[1]>42) {
		printf $0 "\n"
	}

}
' 