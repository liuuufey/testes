#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
clear


cekray=`cat /root/log-install.txt | grep -ow "XRAY" | sort | uniq`
if [ "$cekray" = "XRAY" ]; then
domen=`cat /etc/xray/domain`
else
domen=`cat /etc/v2ray/domain`
fi
portsshws=`cat ~/log-install.txt | grep -w "SSH Websocket" | cut -d: -f2 | awk '{print $1}'`
wsssl=`cat /root/log-install.txt | grep -w "SSH SSL Websocket" | cut -d: -f2 | awk '{print $1}'`

clear
IP=$(curl -sS ifconfig.me);
ossl=`cat /root/log-install.txt | grep -w "OpenVPN" | cut -f2 -d: | awk '{print $6}'`
opensh=`cat /root/log-install.txt | grep -w "OpenSSH" | cut -f2 -d: | awk '{print $1}'`
db=`cat /root/log-install.txt | grep -w "Dropbear" | cut -f2 -d: | awk '{print $1,$2}'`
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"

OhpSSH=`cat /root/log-install.txt | grep -w "OHP SSH" | cut -d: -f2 | awk '{print $1}'`
OhpDB=`cat /root/log-install.txt | grep -w "OHP DBear" | cut -d: -f2 | awk '{print $1}'`
OhpOVPN=`cat /root/log-install.txt | grep -w "OHP OpenVPN" | cut -d: -f2 | awk '{print $1}'`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=1
echo Ping Host
echo Create Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
PID=`ps -ef |grep -v grep | grep sshws |awk '{print $2}'`

if [[ ! -z "${PID}" ]]; then
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "Thank You For Using Our Services" | tee -a /etc/log-create-user.log
echo -e "SSH & OpenVPN Account Info" | tee -a /etc/log-create-user.log
echo -e "Username          : $Login " | tee -a /etc/log-create-user.log
echo -e "Password          : $Pass" | tee -a /etc/log-create-user.log
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "ISP               : $ISP" | tee -a /etc/log-create-user.log
echo -e "City              : $CITY" | tee -a /etc/log-create-user.log
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "IP : $IP" | tee -a /etc/log-create-user.log
echo -e "Host : $domen" | tee -a /etc/log-create-user.log
echo -e "OpenSSH : $opensh" | tee -a /etc/log-create-user.log
echo -e "Dropbear : $db" | tee -a /etc/log-create-user.log
echo -e "SSH-WS : $portsshws" | tee -a /etc/log-create-user.log
echo -e "SSH-SSL-WS : $wsssl" | tee -a /etc/log-create-user.log
echo -e "SSL/TLS : $ssl" | tee -a /etc/log-create-user.log
echo -e "Port Squid : $sqd" | tee -a /etc/log-create-user.log
echo -e "UDPGW : 7100-7300" | tee -a /etc/log-create-user.log
echo -e "OpenVPN           : TCP $ovpn http://$IP:81/client-tcp-1194.ovpn" | tee -a /etc/log-create-user.log
echo -e "OpenVPN           : UDP $ovpn2 http://$IP:81/client-udp-2200.ovpn" | tee -a /etc/log-create-user.log
echo -e "OpenVPN           : SSL 442 http://$IP:81/client-tcp-ssl.ovpn" | tee -a /etc/log-create-user.log
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "PAYLOAD 1" | tee -a /etc/log-create-user.log
echo -e "GET / HTTP/1.1[crlf]Host: $domain[crlf]Connection: Keep-Alive[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]" | tee -a /etc/log-create-user.log
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "PAYLOAD 2" | tee -a /etc/log-create-user.log
echo -e "CONNECT wss://bug.com/ [protocol][crlf]Host: $domain[crlf]Upgrade: websocket[crlf*2]" | tee -a /etc/log-create-user.log
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "Expired On      : $exp" | tee -a /etc/log-create-user.log
echo -e "Script Install  : liuuufey" | tee -a /etc/log-create-user.log

else

echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "Thank You For Using Our Services" | tee -a /etc/log-create-user.log
echo -e "SSH & OpenVPN Account Info" | tee -a /etc/log-create-user.log
echo -e "Username          : $Login " | tee -a /etc/log-create-user.log
echo -e "Password          : $Pass" | tee -a /etc/log-create-user.log
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "ISP               : $ISP" | tee -a /etc/log-create-user.log
echo -e "City              : $CITY" | tee -a /etc/log-create-user.log
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "IP : $IP" | tee -a /etc/log-create-user.log
echo -e "Host : $domen" | tee -a /etc/log-create-user.log
echo -e "OpenSSH : $opensh" | tee -a /etc/log-create-user.log
echo -e "Dropbear : $db" | tee -a /etc/log-create-user.log
echo -e "SSH-WS : $portsshws" | tee -a /etc/log-create-user.log
echo -e "SSH-SSL-WS : $wsssl" | tee -a /etc/log-create-user.log
echo -e "SSL/TLS : $ssl" | tee -a /etc/log-create-user.log
echo -e "Port Squid : $sqd" | tee -a /etc/log-create-user.log
echo -e "UDPGW : 7100-7300" | tee -a /etc/log-create-user.log
echo -e "OpenVPN           : TCP $ovpn http://$IP:81/client-tcp-1194.ovpn" | tee -a /etc/log-create-user.log
echo -e "OpenVPN           : UDP $ovpn2 http://$IP:81/client-udp-2200.ovpn" | tee -a /etc/log-create-user.log
echo -e "OpenVPN           : SSL 442 http://$IP:81/client-tcp-ssl.ovpn" | tee -a /etc/log-create-user.log
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "PAYLOAD 1" | tee -a /etc/log-create-user.log
echo -e "GET / HTTP/1.1[crlf]Host: $domain[crlf]Connection: Keep-Alive[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]" | tee -a /etc/log-create-user.log
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "PAYLOAD 2" | tee -a /etc/log-create-user.log
echo -e "CONNECT wss://bug.com/ [protocol][crlf]Host: $domain[crlf]Upgrade: websocket[crlf*2]" | tee -a /etc/log-create-user.log
echo -e "===============================" | tee -a /etc/log-create-user.log
echo -e "Expired On      : $exp" | tee -a /etc/log-create-user.log
echo -e "Script Install  : liuuufey" | tee -a /etc/log-create-user.log
fi
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
trial-menu
