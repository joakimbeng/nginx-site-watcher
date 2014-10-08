#!/bin/bash

while true
do
   HASH=`tar c /etc/nginx/sites-enabled 2>/dev/null | md5sum`

   if [[ "$HASH" != "$LHASH" ]]
   then
       echo "RESTARTING"
       nginx -s reload
       LHASH=$HASH
   fi
   sleep 5
done
