#!/bin/bash

LOGFILE=$1

if [ -z "$LOGFILE" ]
then
 echo "Usage: $0 logfile"
 exit 1
fi

grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' "$LOGFILE" \
| sort -u > unique_ips.txt

cat unique_ips.txt

echo ""
echo "Total Unique IPs: $(wc -l < unique_ips.txt)"

