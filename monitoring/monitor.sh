#!/bin/bash
cd /home/ubuntu/
rm -f iwconfig.txt && /sbin/iwconfig > iwconfig.txt
python iwconfigparser.py iwconfig.txt

sudo -E python readvoltages.py

python readtemps.py
