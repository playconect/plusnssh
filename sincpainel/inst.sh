#!/bin/bash
clear
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
rm *.sh > /dev/null 2>&1
apt install unzip -y > /dev/null 2>&1
winget https://github.com/nandoslayer/plusnssh/blob/ntech/sincpainel/SINC.zip
unzip SINC.zip > /dev/null 2>&1
chmod 777 *sh
service ssh restart
echo -e "\n\033[1;32mCONCLUIDO!\033[0m"
sleep 1.5
cat /dev/null > ~/.bash_history && history -c && clear
echo -e "\033[1;36mENTRE NO PAINEL E CRIE UMA CONTA SSH PRA VER SE ESTA TUDO OK!\033[0m"
rm inst SINC.zip > /dev/null 2>&1