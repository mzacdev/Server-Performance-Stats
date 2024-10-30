#!/bin/bash

echo "Total CPU Usage: $(mpstat | awk '/all/ {print 100 - $12}')%"

mem=$(free -m) 
total_mem=$(echo "$mem" | awk '/Mem:/ {print $2}')
used_mem=$(echo "$mem" | awk '/Mem:/ {print $3}')
free_mem=$(echo "$mem" | awk '/Mem:/ {print $4}')
mem_usage=$(awk "BEGIN {printf \"%.2f\", ($used_mem/$total_mem)*100}")
echo "Used Memory: $used_mem MB ($mem_usage%)"
echo "Free Memory: $free_mem MB"

echo "Root Disk: $(df -h / | awk '/\// {print $2, $3, $4, $5}')"

echo "Top 5 CPU Usage:"
ps auxf | sort -nr -k 3 | head -5 | awk '{print $2, $3, $11}'

echo "Top 5 Memory Usage:" 
ps auxf | sort -nr -k 4 | head -5 | awk '{print $2, $4, $11}'
