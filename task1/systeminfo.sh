!#/bin/bash
Hostname = $(hostname)
up = $(uptime -p)
disk =$(df -h / | tail -1 | awk '{print $5}')
memory = $(free -m | awk '/Mem:/ {print $3 "/" $2 " MB"}')
echo "$Hostname|$up|$disk|$memory" >> sysinfo_raw.txt

