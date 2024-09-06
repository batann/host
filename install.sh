#!/bin/bash
if [[ -f /etc/hosts ]]; then
touch lol
cat /etc/hosts >> lol
cat /home/$USER/hosts/hosts >> lol
sudo mv /etc/hosts /etc/hosts.$(date +%j).org
sudo mv lol /etc/hosts
sudo chown root:root hosts
cd /home/$USER/
sudo trash $HOME/hosts
else
sudo mv /home/$USER/hosts/hosts /etc/hosts
cd /home/$USER/
sudo trash /home/$user/hosts
fi
clear
echo -e "\033[31mScript executed successfully\033[0m"
read -n1 -p "Enter [ANY] to continue..." lol
exit 0
