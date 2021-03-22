#!/bin/bash

read -p 'URL: ' url

gobuster dir -u $url -t 1 -w /root/wordlist/common.txt -x .php,.txt,.php.bak,.docx -b 404
gobuster dir -u $url -t 1 -w /root/wordlist/directory-list-2.3-medium.txt -x .php,.txt,.php.bak,.docx -b 403,404
gobuster vhost -u $url -t 1 -w /root/wordlist/subdomains-top1million-5000.txt
gobuster vhost -u $url -t 1 -w /root/wordlist/directory-list-2.3-medium.txt | grep "Status: 200"
