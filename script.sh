#!/bin/bash
WGET='/usr/bin/wget'
URL='54.209.225.159:3000'

${WGET} -O /dev/null ${URL}

if [ $? -eq 0 ]; then
   echo "running "
else
   echo "restarting apache2"
   sudo systemctl restart apache2
fi
