#!bin/bash
apt update
apt upgrade -y
whereis proxychains
rm -r /etc/proxychains.conf
mv proxychains.conf /etc/
echo
echo
echo -e "\e[42mTor\e[0m"
service tor start
echo
echo
echo -e "\e[41mProxychains\e[0m"
echo
echo
proxychains ping -c 4 www.google.com
echo
echo