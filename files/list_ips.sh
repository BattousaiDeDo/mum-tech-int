#!/bin/bash


grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" /var/log/apache2/access.log | sort | uniq # grep for all IPs. (technically up to 999.999.999.999) then sort and only show it once thanks to uniq.
