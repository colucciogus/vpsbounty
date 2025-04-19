#!/bin/bash
if [ -z "$1" ]; then echo "Uso: ./recon-starter.sh dominio.com"; exit 1; fi
dom=$1; fecha=$(date +%Y-%m-%d); base=~/recon/${dom}_${fecha}
mkdir -p $base/{subdominios,vivos,urls}
subfinder -d $dom -all -silent -o $base/subdominios/subfinder.txt
assetfinder --subs-only $dom > $base/subdominios/assetfinder.txt
amass enum -passive -d $dom -o $base/subdominios/amass.txt
cat $base/subdominios/*.txt | sort -u > $base/subdominios/todos.txt
cat $base/subdominios/todos.txt | httpx -silent > $base/vivos/vivos.txt
cat $base/subdominios/todos.txt | gau > $base/urls/gau.txt
cat $base/subdominios/todos.txt | waybackurls > $base/urls/wayback.txt
cat $base/urls/*.txt | sort -u > $base/urls/todas.txt
echo "Recon finalizado: $base"
