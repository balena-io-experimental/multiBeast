#!/bin/bash

service apache2 start
sleep 2
touch /var/log/apache2/access.log
tail -f /var/log/apache2/access.log
sleep infinity
