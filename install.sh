#!/bin/bash
touch hosts
cat /etc/hosts >> hosts
cat /home/batan/hosts/hosts >> hosts
sudo mv /etc/hosts /etc/hosts.$(date +%j).org
sudo chown root:root hosts
sudo mv hosts /etc/hosts
sudo trash /home/batan/hosts
clear
echo -e "\033[31mScript executed successfully\033[0m"
echo -e "\033[34m Moved original file to \033[31m/etc/hosts.$(date +%j).org\033[0m"
read -n1 -p "Enter [ANY] to continue..." lol
exit 0
