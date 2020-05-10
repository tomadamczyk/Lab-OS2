#!/bin/bash
#
#Napisz skrypt, który w zadanym miejscu w systemie plików
#(parametr wywołania skryptu), o ile ono istnieje i jest
#katalogiem, wyszuka i zgłosi wszystkie puste podkatalogi, które
#nie były modyfikowane od ponad miesiąca.

# uznałem, że jako ponad miesiąc można określić "więcej niż 31 dni"
if [ -d $1 ]; then
	find $1 -type d -empty -mtime +31
fi
