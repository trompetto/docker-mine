#!/bin/bash
#while true; do { echo -e 'HTTP/1.1 200 OK\r\n'; cat /proc/loadavg; } | nc -vvl -p 8080; done
webfsd -p 8080 -f index.html -R /
