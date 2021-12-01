#!/bin/bash
identifier=`date +"%Y%m%dT%H%M%S"`.csv
jmeter -Jthreads=500 -n -t test.jmx -l "log/${identifier}.csv" -e -o "log/${identifier}"
rm -rf /var/www/opt_jmeter/ && cp -rf "log/${identifier}" /var/www/opt_jmeter
