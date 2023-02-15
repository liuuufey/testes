#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
echo "Checking VPS"
clear
cat /usr/bin/bannerku  | lolcat
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
    cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
   	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
    echo -e  ""
    echo -e    " \e[032;1mCPU Model:\e[0m $cname"
    echo -e    " \e[032;1mNumber Of Cores:\e[0m $cores"
    echo -e    " \e[032;1mCPU Frequency:\e[0m $freq MHz"
    echo -e    " \e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
    echo -e    " \e[032;1mSystem Uptime:\e[0m $up"
    echo -e    " \e[032;1mIsp Name:\e[0m $ISP"
    echo -e    " \e[032;1mCity:\e[0m $CITY"
    echo -e    " \e[032;1mTime:\e[0m $WKT"
    echo -e    " \e[033;1mIPVPS:\e[0m $IPVPS"
echo -e    ""
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e   "                     \e[1;31m\e[1;31m═[\e[mMENU MAIN\e[1;31m]═\e[m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e  ""
echo -e " 1\e[1;33m)\e[m  SSH WS & OpenVPN MENU"
echo -e " 2\e[1;33m)\e[m  VMESS MENU"
echo -e " 3\e[1;33m)\e[m  VLESS MENU"
echo -e " 4\e[1;33m)\e[m  TROJAN MENU"
echo -e  ""
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e   "                     \e[1;31m\e[1;31m═[\e[mSYSTEM MENU\e[1;31m]═\e[m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e  ""
echo -e " 5\e[1;33m)\e[m  Add-host"
echo -e " 6\e[1;33m)\e[m  Renew Cert XRAY"
echo -e " 7\e[1;33m)\e[m  Backup "
echo -e " 8\e[1;33m)\e[m  Restore"
echo -e " 9\e[1;33m)\e[m  Clear-Log"
echo -e " 10\e[1;33m)\e[m Install BBR"
echo -e " 11\e[1;33m)\e[m Speedtest VPS"
echo -e " 12\e[1;33m)\e[m Clear Cache RAM"
echo -e " 13\e[1;33m)\e[m Info Script Auto Install"
echo -e " 14\e[1;33m)\e[m Check Usage of VPS Ram" 
echo -e " 15\e[1;33m)\e[m Information Display System" 
echo -e  ""
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e   "   x)   \e[1;31m\e[1;31m═[\e[mExit\e[1;31m]═\e[m"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p "     Please Input Number  [1-10 or x] :  "  ssh
echo -e ""
case $ssh in
1)
menu-ssh
;;
2)
menu-vmess
;;
3)
menu-vless
;;
4)
menu-trojan
;;
5)
add-host
;;
6)
crtv2ray
;;
7)
bckp
;;
8)
restore
;;
9)
clear-log
;;
10)
bbr
;;
11)
speedtest
;;
12)
clearcache
;;
13)
info
;;
14)
ram
;;
15)
about
;;
x)
menu
;;
*)
echo "Please enter an correct number"
;;
esac
