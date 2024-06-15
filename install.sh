#!/bin/bash
if [[ -f /etc/hosts ]]; then
sudo mv /etc/hosts /etc/hosts.$(date +%j).org
sudo mv hosts /etc/hosts
cd $HOME
sudo trash $HOME/hosts
else
sudo mv hosts /etc/hosts
cd $HOME
sudo trash $HOME/hosts
fi
clear
echo -e "\033[31mScript executed successfully\033[0m"
