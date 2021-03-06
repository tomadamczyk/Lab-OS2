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



### Lab4 - program find

#### Zadanie 1

Napisz skrypt, który w zadanym miejscu w systemie plików (parametr wywołania skryptu), o ile ono istnieje i jest katalogiem, wyszuka i zgłosi wszystkie puste podkatalogi, które nie były modyfikowane od ponad miesiąca.

#### Zadanie 2

Napisz skrypt, który dla wskazanego miejsca w systemie plików (parametr wywołania skryptu):

a) policzy (wc), ile znajduje się tam plików, katalogów, dowiązań miękkich oraz gniazd sieciowych

b) wypisze, ile z tych różnych typów plików należy do wskazanego użytkownika (jeśli podano jako parametr wywołania skryptu)

c) wypisze, ile spośród obecnych plików zwykłych jest niewielkich (rozmiar <1MiB), dużych (rozmiar >100MiB) oraz pośrednich

d) w przypadku dowiązań symbolicznych określi (wypisze), które są uszkodzone (nie wskazują poprawnych/istniejących miejsc w systemie plików)

### Lab5 - potoki

#### Zadanie 1

Napisz skrypt, który zaszyfruje (szyfr cezara; program tr) każdy plik obecny w podanym miejscu systemu plików (parametr wywołania skryptu). Uwzględnij wszystkie możliwe podkatalogi wskazanego miejsca oraz upewnij się, że podmiot uruchamiający skrypt ma odpowiednie prawa do szyfrowanych plików. Wyświetl na ekranie i zapisz do pliku ścieżki do szyfrowanych plików.

#### Zadanie 2

Zabawy z komendą ps --no-header -ewwo user,pcpu,command. Niech skrypt:

a) wyświetli 10 procesów, które najbardziej obciążają procesor

b) policzy, ile procesów należy do poszczególnych użytkowników systemu

c) zamieni wielokrotne wystąpienia spacji na pojedyncze ich wystąpienia

d) zliczy, ile unikalnych programów jest uruchomionych w systemie (zakładamy najprościej, że program1, /jakiś/program1 oraz /jakiś/program1 --jakaś-opcja to dwa unikalne działające programy: program1 oraz /jakiś/program1)

### Lab6 - program AWK

#### Zadanie 1

Napisz skrypt, który będzie ostrzegał przed przegrzaniem się podzespołów, analizując wynik działania komendy sensors (jeżeli tego programu brakuje, posłuż się zawartością pliku datko.pl/SO2/sensors.txt). Skrypt ma wyświetlić czujniki, których obecna temperatura przekracza ustaloną wartość (dowolną). [poproszę o jedno, zmyślne wykonanie komendy awk]

### Lab7 - wyrażenia regularne

#### Zadanie 1

Pobierz plik http://datko.pl/SO2/sensors.txt - najlepiej użyj programu wget z poziomu konsoli (składnia: wget <adres-pliku>). Następnie napisz skrypt, który z całej zawartości tego pliku zwróci (wypisze na ekran) wszystkie wartości aktualnych temperatur (zwróć tylko i wyłącznie wartości z jednostkami; każdą wypisać w nowej linii). [poproszę o jedno, zmyślne wykonanie komendy awk z wyrażeniami regularnymi]

#### Zadanie 2

Proszę opracować skrypt, który przy pomocy wyrażeń regularnych wykona odpowiednie akcje na podanych plikach (można je uprzednio pobrać na dysk lub ładować bezpośrednio z sieci wewnątrz skryptu - dowolnie). Proszę:

a) wczytać plik http://datko.pl/SO2/qemu-io.c i wyświetlić jego treść, modyfikując w locie format ładowanych rozszerzeń z .h na .hpp,

b) wczytać plik http://datko.pl/SO2/cpp.txt i wyświetlić jego treść, pomijając przy tym wszystkie znaczniki języka HTML (włącznie z atrybutami! <p class="a">tekst</p> → tekst),

c) wczytać plik http://datko.pl/SO2/tox.ini i odnaleźć wszystkie definicje zmiennych w kluczach setenv – wyświetlić jakie unikalne nazwy pojawiają się w pliku,

d) wyposażyć skrypt w rozsądną obsługę błędów, takich jak na przykład nieistniejące pliki wejściowe.

