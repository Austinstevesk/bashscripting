#!/bin/bash

for ip in `seq 1 254`; do
ping -c 3 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done

./ipsweep.sh 172.16.40
