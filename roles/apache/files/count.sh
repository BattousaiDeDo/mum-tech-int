#!/bin/bash

COUNT=`grep "GET" /var/log/apache2/access.log | grep "200" | wc -l` #first chekc for all GETs, then for successful 200 and count the entries
DIRECTORY=/var/www/testsite

if [ ! -d "$DIRECTORY" ]; then
	mkdir /var/www/testsite
fi

cat << EOF > $DIRECTORY/index.html
<!DOCTYPE html>
<html>
<body>

<h1>Successful HTTP Requests: </h1>
<h1>$COUNT</h1>


</body>
</html>
EOF

systemctl restart apache2.service
