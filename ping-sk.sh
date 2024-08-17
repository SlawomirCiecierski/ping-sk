#!/bin/bash
#----------------------------------------------
# autor: Slawomir Ciecierski ciecierski@post.pl
#----------------------------------------------

echo "============================="
echo "Uruchomiono skrypt ping-sk.sh"
echo "============================="

#zmienne w skrypcie

biezacaData=$(date '+%Y-%m-%d_%H-%M-%S') #biezaca data i godzina np. 2024-08-15_20-12-03
LOGFILE="log_$biezacaData.log" #nazwa pliku np. log_2024-08-15_20-12-03
ERRORFILE="err_$biezacaData.log" #nazwa pliku np. err_2024-08-15_20-12-03


#--ponizej wpisac wszystkie niezbedne adresy do pingowania oraz ilosc operacji
addresess=(
"1.1.1.1" #IPv4
"8.8.8.8"
"wp.pl"
"127.99.88.23"
"11.22.34.8"
"2001:0db8:85a3:0000:0000:8b2e:0370:7c34" #IPv6
)
ping_count=2 #ilosc pingowan poszczegolnych adresow

echo "Generowanie logu: $LOGFILE"
echo "Generowanie logu: $ERRORFILE"

#wlasciwe generownie logow odbywa sie w czasie pierwszego zadzialania iteracji
#petli FOR po czym w kolejnych iiteracjach logi sa uzupeniane

for addres in "${addresess[@]}"; do
    echo "-------------------------------------------"
	echo "pinguje adres $addres i uzupelnia logi.."
	ping -c "$ping_count" $addres 1>>$LOGFILE 2>>$ERRORFILE
    echo "-------------------------------------------"

#informuje o stanie wykonywanej operacji pingowania adresu
#w przypadku niepowodzenia skrypt wydaje kompunikat i przechodzi nastepnego adresu
if [ "$?" -eq 0 ]; then
	echo "Ping do $addres zakonczony sukcesem"
else
	echo "Ping do $addres nie powiodl sie"
fi
    echo "-------------------------------------------"
done	

#Wszystkie adresy umieszczone w zmienne addresess zostaly wypingowane

echo "Koniec dzialania skryptu"
