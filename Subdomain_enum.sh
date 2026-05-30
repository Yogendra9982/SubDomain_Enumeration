#!/bin/bash

echo "===================================="
echo " ADVANCED SUBDOMAIN ENUMERATOR"
echo "===================================="

read -p "Enter The Domain: " domain

mkdir -p recon/$domain

echo ""
echo "[+] Finding Subdomains......."


subfinder -d $domain -silent > recon/$domain/subfinder_output.txt

amass enum -passive -d $domain   > recon/$domain/amass_output.txt

assetfinder --subs-only   $domain >> recon/$domain/asset_output.txt

echo ""
echo "[+] Total Found:"

cat recon/$domain/subfinder_output.txt recon/$domain/amass_output.txt recon/$domain/asset_output.txt  | sort -u > recon/$domain/final_subdomains.txt

wc -l recon/$domain/final_subdomains.txt

echo ""
echo "[+] Checking Alive Hosts....."

cat recon/$domain/final_subdomains.txt | httprobe > recon/$domain/alive_subdomains.txt

echo ""
echo "[+] Resolving IP Addresses..."

while read sub
do
	ip=$(dig +short $sub | head -1 )
	echo "Ssub ---> $ip"
done < recon/$domain/alive_subdomains.txt > recon/$domain/final_output_with_ip.txt

echo ""
echo "[+] Completed"

echo "==============================================================================="

cat recon/$domain/alive_subdomains.txt

echo ""
echo "[+] Results Saved In recon/$domain/"



