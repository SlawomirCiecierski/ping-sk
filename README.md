<h1><center></center>Instrukcja dzialania skryptu bash pn. ping-sk.sh </h1>

1. 
Skrypt pozwala zautomatyzowac wykonywanie pingow do adresow ipv.4 oraz v.6 a takze w postaci tekstowej.


2.
Skrypt generuje dwa logi:
pierwszy log o nazwie log_DATAGODZINA.log zawiera wyniki dzialania skryptu
dugi log o nazwia err_DATAGODZINA.log zawiera komunikaty o bledach dzialania skryptu
Za kazdym uruchomieniem skryptu tworzy sie para logow o nazwach zawierajacych aktualna date logow

Przyklad logu:

--- wp.pl ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1001ms
rtt min/avg/max/mdev = 23.618/24.844/26.071/1.226 ms
PING 127.99.88.23 (127.99.88.23) 56(84) bytes of data.
64 bytes from 127.99.88.23: icmp_seq=1 ttl=64 time=0.065 ms
64 bytes from 127.99.88.23: icmp_seq=2 ttl=64 time=0.080 ms

--- 127.99.88.23 ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1011ms
rtt min/avg/max/mdev = 0.065/0.072/0.080/0.007 ms
PING 11.22.34.8 (11.22.34.8) 56(84) bytes of data.

--- 11.22.34.8 ping statistics ---
2 packets transmitted, 0 received, 100% packet loss, time 1018ms

PING 2001:0db8:85a3:0000:0000:8b2e:0370:7c34(2001:db8:85a3::8b2e:370:7c34) 56 data bytes

--- 2001:0db8:85a3:0000:0000:8b2e:0370:7c34 ping statistics ---
2 packets transmitted, 0 received, 100% packet loss, time 1002ms


3.
W podanym ponizej miejscu nalezy wpisac adresy oraz ilosc pingow pojedynczego adresu:

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


UWAGA: nalezy zachowac format wpisywanych danych. Adresy IP zaczynaja sie od nowej linijki oraz zaczynaja i koncza sie cudzyslowiem


4.
Skrypt powinien miec miec odpowiednie pozwolenie do wykonywania sie. Przyklad pozwalajacy na pelen dostep do skryptu wszystkim uzytkownikom
chmod 777 ping-sk.sh


5. 
Przyklad uruchomienia skryptu z biezacego miejsca 
./ping-sk.sh
Nalezy zastanowic sie nad umieszczeniem skryptu w miejscu dostepnym dla wszystkich uzytkownikow np.
/usr/localo/bin
Nalezy pamietac nadaniu odpowiednich pozwolen do wykonywania skryptu oraz nadania odpowiednich
bezwzglednych sciezek dostepu logow, ktore trzeba umiescic w kodzie skryptu


6.
Testowano na nastepujacej dystybucji linuksa
cat /etc/os-release
NAME="Linux Mint"
VERSION="21 (Vanessa)"
ID=linuxmint
ID_LIKE="ubuntu debian"
PRETTY_NAME="Linux Mint 21"
VERSION_ID="21"
HOME_URL="https://www.linuxmint.com/"
SUPPORT_URL="https://forums.linuxmint.com/"
BUG_REPORT_URL="http://linuxmint-troubleshooting-guide.readthedocs.io/en/latest/"
PRIVACY_POLICY_URL="https://www.linuxmint.com/"
VERSION_CODENAME=vanessa
UBUNTU_CODENAME=jammy

oraz nastepujacej wersji interpretera BASH
$ bash --version
GNU bash, wersja 5.1.16(1)-release (x86_64-pc-linux-gnu)
Copyright (C) 2020 Free Software Foundation, Inc.
Licencja GPLv3+: GNU GPL wersja 3 lub późniejsza <http://gnu.org/licenses/gpl.html>


7.
Szczegolowe dzialanie poszczegoolnych komend skryptu opisano w komentarzach skryptu ping-sk.sh

====Koniec instrukcji====

