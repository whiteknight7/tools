#!/bin/bash

echo 'If the scanner failed try use "http://x.x.x.x"'

read -p 'URL: ' url
read -p 'Proxy URL: ' purl

gobuster dir -u $url -p $purl -w /root/wordlist/directory-list-2.3-medium.txt -x .php,.txt,.php.bak,.docx -b 403,404
gobuster vhost -u $url -p $purl -w /root/wordlist/subdomains-top1million-5000.txt
gobuster vhost -u $url -p $purl -w /root/wordlist/directory-list-2.3-medium.txt | grep "Status: 200"
