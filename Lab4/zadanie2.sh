#!/bin/bash
#
#Napisz skrypt, który dla wskazanego miejsca w systemie plików (parametr wywołania skryptu):
#a) policzy (wc), ile znajduje się tam plików, katalogów, dowiązań miękkich oraz gniazd sieciowych
#b) wypisze, ile z tych różnych typów plików należy do wskazanego użytkownika 
#(jeśli podano jako parametr wywołania skryptu)
#c) wypisze, ile spośród obecnych plików zwykłych jest niewielkich (rozmiar <1MiB), 
#dużych (rozmiar >100MiB) oraz pośrednich
#d) w przypadku dowiązań symbolicznych określi (wypisze), które są uszkodzone 
#(nie wskazują poprawnych/istniejących miejsc w systemie plików)

path=$1
currentUser=$(whoami)

# A
allFiles=`find $path -type f,d,l,s | wc -l`

# B
currentUsersFiles=`find $path -type f,d,l,s -user $currentUser | wc -l`

# C
smallFiles=`find $path -type f -size -1M | wc -l`
bigFiles=`find $path -type f -size +100M | wc -l`
mediumFiles=`find $path -type f -size +1M -size -100M | wc -l`

# D
find $path -xtype l;

echo Plików, katalogów, dowiązań miękkich i gniazd sieciowych razem jest $allFiles 
echo $currentUsersFiles z tych plików należy do użytkownika
echo Małych plików jest $smallFiles 
echo Dużych plików jest $bigFiles
echo Średnich plików jest $mediumFiles