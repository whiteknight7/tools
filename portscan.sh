for i in $(seq 1 65535); do nc -nvz -w 1 192.168.225.5 $i 2>&1; done | grep -v "refused"
