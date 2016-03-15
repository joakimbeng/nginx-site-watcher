#!/bin/bash

dirs=("$@")
hashes=()

while true
do
	for i in ${!dirs[@]}; do
		dir=${dirs[$i]}

		LHASH=${hashes[$i]}
		HASH=`tar c "$dir" 2>/dev/null | md5sum`

		if [[ "$HASH" != "$LHASH" ]];then
		    echo "RESTARTING"
		    nginx -s reload
		    hashes[$i]=$HASH
		fi
	done
	sleep 5
done
