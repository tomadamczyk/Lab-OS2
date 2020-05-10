#!/bin/bash
#
#Zabawy z komendą ps --no-header -ewwo user,pcpu,command. Niech skrypt:
#a) wyświetli 10 procesów, które najbardziej obciążają procesor
#b) policzy, ile procesów należy do poszczególnych użytkowników systemu
#c) zamieni wielokrotne wystąpienia spacji na pojedyncze ich wystąpienia
#d) zliczy, ile unikalnych programów jest uruchomionych w systemie (zakładamy najprościej, że program1, 
#/jakiś/program1 oraz /jakiś/program1 --jakaś-opcja to dwa unikalne działające programy: program1 oraz /jakiś/program1)

# A
ps axu | sort -nrk 3,3 | head -10

# B
ps -eo user | sort | uniq -c

# C
ps axu | tr -s ' '

# D
ps axo comm | sort | uniq | wc -l