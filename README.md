# Lab-OS2
Skrypty z laboratorium Systemów Operacyjnych 2.

### Lab3 - dowiązania

#### Zadanie 1

Napisz skrypt, który wyświetli nazwy wszystkich dowiązań symbolicznych z danego katalogu (parametr wywołania skryptu), które wskazują na określone miejsce w systemie plików (parametr wywołania skryptu). 

#### Zadanie 2

Napisz skrypt, który dla wszystkich plików wykonywalnych z jakiegoś katalogu (parametr wywołania skryptu) utworzy dowiązania twarde w drugim katalogu (parametr wywołania skryptu), zaś dla podkatalogów utworzy on dowiązania miękkie. Dodatkowo:
a) skontroluj liczbę argumentów i uprawnienia do odpowiednich elementów systemu plików,
b) nie twórz nowego dowiązania, jeżeli w drugim katalogu istnieje już dowiązanie twarde (wcześniej zakładaliśmy, że na pewno nie istnieje)
c) zadbaj o to, żeby dowiązania symboliczne byłī stworzone względem katalogu roboczego (pwd)
d) w przypadku podkatalogów pierwszego danego katalogu, utwórz odpowiednie dowiązania do plików z tych podkatalogów w drugim danym katalogu (załóż, że nazwy plików są unikalne)



### Lab2 - program find

#### Zadanie 1

Napisz skrypt, który w zadanym miejscu w systemie plików (parametr wywołania skryptu), o ile ono istnieje i jest katalogiem, wyszuka i zgłosi wszystkie puste podkatalogi, które nie były modyfikowane od ponad miesiąca.

#### Zadanie 2

Napisz skrypt, który dla wskazanego miejsca w systemie plików (parametr wywołania skryptu):

a) policzy (wc), ile znajduje się tam plików, katalogów, dowiązań miękkich oraz gniazd sieciowych

b) wypisze, ile z tych różnych typów plików należy do wskazanego użytkownika (jeśli podano jako parametr wywołania skryptu)

c) wypisze, ile spośród obecnych plików zwykłych jest niewielkich (rozmiar <1MiB), dużych (rozmiar >100MiB) oraz pośrednich

d) w przypadku dowiązań symbolicznych określi (wypisze), które są uszkodzone (nie wskazują poprawnych/istniejących miejsc w systemie plików)

### Lab4 - potoki

#### Zadanie 1

Napisz skrypt, który zaszyfruje (szyfr cezara; program tr) każdy plik obecny w podanym miejscu systemu plików (parametr wywołania skryptu). Uwzględnij wszystkie możliwe podkatalogi wskazanego miejsca oraz upewnij się, że podmiot uruchamiający skrypt ma odpowiednie prawa do szyfrowanych plików. Wyświetl na ekranie i zapisz do pliku ścieżki do szyfrowanych plików.

#### Zadanie 2

Zabawy z komendą ps --no-header -ewwo user,pcpu,command. Niech skrypt:

a) wyświetli 10 procesów, które najbardziej obciążają procesor

b) policzy, ile procesów należy do poszczególnych użytkowników systemu

c) zamieni wielokrotne wystąpienia spacji na pojedyncze ich wystąpienia

d) zliczy, ile unikalnych programów jest uruchomionych w systemie (zakładamy najprościej, że program1, /jakiś/program1 oraz /jakiś/program1 --jakaś-opcja to dwa unikalne działające programy: program1 oraz /jakiś/program1)