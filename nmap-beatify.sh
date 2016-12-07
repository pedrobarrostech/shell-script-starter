for ip in $(nmap -sN -p 21,22,80 $(echo "$(ifconfig | grep "inet" | grep "broadcast" | cut -d" " -f10 | cut -d"." -f1-3).0/24") | grep "report for" | cut -d" " -f5); do
  nmap -sS  -F -O $ip > temp 
  ports = "$(cat temp | grep "/tcp" | cut -d"/" -f1 | tr "\n" " "]"
  if [ "$ports" == "" ]; then ports="No port open detected"; fi
  os = "$(cat temp | grep "OS details" | cut -d":" -f2 | cut -d" " -f2-99 | cut -d"," -f1 | grep -v "many fingerprints")"
  if [ "$os" == ""] then; os="No os detected"; fi
  echo "IP active: $ip | Ports: $ports | OS: $os"
done
