#!/bin/bash

grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" /var/log/apache2/access.log | sort | uniq
