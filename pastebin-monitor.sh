#!/bin/bash
 
rm templinks templinks2 2>/dev/null >/dev/null
touch templinks
touch templinks2
 
extrai() {
# EXTRAI OS LINKS DO SITE | templinks
links="$(curl -s "http://pastebin.com/archive" | grep "i_p0" | cut -d"=" -f5 | cut -d'"' -f2 | tr -d "/")"
sleep 2
    for l in $links; do
      r=$(grep "$l" templinks)
      if [ "$r" == "" ]; then echo $l >> templinks; fi
    done
}
 
acessa() {
# ACESSAR OS LINKS E FILTRAR OS QUE CONTÉM A PLAVRA PUBLIC | templinks2
for r in $1; do
    echo "$r" >> templinks2
    r2="$(curl -s "http://pastebin.com/raw/$r" | grep "$2")";
    if [ "$r2" != "" ]; then echo "http://pastebin.com/raw/$r"; fi;
    sleep 2
done
}
 
[ "$1" == "" ] && { clear;echo "[+] Uso: $0 \"string\""; exit; }
clear
echo "[+] Monitorando \"$1\" em pastebin.com"
echo
while :; do
    extrai
    links="$(diff templinks templinks2 | cut -d" " -f2 | grep -v ",")"
    acessa "$links" "$1"
    sleep 3
done
