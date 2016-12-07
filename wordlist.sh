#!/bin/bash

if [ "$1"  == ""] then
  echo 
  echo "Use: $0 wordlist.txt"
  exit
fi

dos2unix $1 >> /dev/null

for word in $(cat $1); do 
  md5 = "$(echo -n $word | md5sum | cut -d " " -f1)"
  b64 = "$(echo -n $word | base64)"
  sha256 = "$(echo -n $word | sha256sum | cut -d" " -f1)"
  
  echo "$word:$md5:$b64:$sha256"
 dont >> temp$1
 
cat temp$1 | column -s: -t >> "$1.final"
rm temp$1
