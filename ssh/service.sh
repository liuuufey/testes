#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo ""
status="$(systemctl show ssh.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SSH                 : SSH Service is "$green"running"$NC""                  
else                                                                                    
echo -e " SSH                 : SSH Service is "$red"not running (Error)"$NC""        
fi
status="$(systemctl show squid.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Squid               : Squid Service is "$green"running"$NC""                
else                                                                                    
echo -e " Squid               : Squid Service is "$red"not running (Error)"$NC""      
fi            
status="$(systemctl show stunnel4.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Stunnel4            : Stunnel Service is "$green"running"$NC""                  
else                                                                                    
echo -e " Stunnel4            : Stunnel Service is "$red"not running (Error)"$NC""        
fi  
status="$(systemctl show dropbear.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " DropBear            : DropBear Service is "$green"running"$NC""                  
else                                                                                    
echo -e " DropBear            : DropBear Service is "$red"not running (Error)"$NC""        
fi
status="$(systemctl show ws-stunnel.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " WS Stunnel          : WS Stunnel Service is "$green"running"$NC""                
else                                                                                    
echo -e " WS Stunnel          : WS Stunnel Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show ws-dropbear.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " WS Dropbear         : WS Dropbear Service is "$green"running"$NC""                
else                                                                                    
echo -e " WS Dropbear         : WS Dropbear Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show cron.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " CRON                : CRON Service is "$green"running"$NC""                
else                                                                                    
echo -e " CRON                : CRON Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show nginx.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Nginx               : Nginx Service is "$green"running"$NC""                
else                                                                                    
echo -e " Nginx               : Nginx Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show vnstat.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Vnstat              : Vnstat Service is "$green"running"$NC""                
else                                                                                    
echo -e " Vnstat              : Vnstat Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show fail2ban.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Fail2ban            : Fail2ban Service is "$green"running"$NC""                
else                                                                                    
echo -e " Fail2ban            : Fail2ban Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show xray --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Trojan WS/GRPC      : Trojan GFW Service is "$green"running"$NC""                
else                                                                                    
echo -e " Trojan WS/GRPC      : Trojan GFW Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show xray --no-page)"                                     
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Vmess WS/GRPC       : V2RAY TLS Service is "$green"running"$NC""                
else                                                                                    
echo -e " Vmess WS/GRPC       : V2RAY TLS Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show xray --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Vless WS/GRPC       : Vless TLS Service is "$green"running"$NC""                
else                                                                                    
echo -e " Vless WS/GRPC       : Vless TLS Service is "$red"not running (Error)"$NC""      
fi  
status="$(systemctl show xray --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Shadowsocks WS/GRPC : Shadowsocks Service is "$green"running"$NC""                
else                                                                                    
echo -e " Shadowsocks WS/GRPC : Sadhowsocks Service is "$red"not running (Error)"$NC""      
fi

