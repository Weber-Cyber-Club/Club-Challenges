#!/bin/sh

postalias /etc/aliases
postfix start
./usr/local/bin/emailCheck.sh &
httpd -DFOREGROUND
