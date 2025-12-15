#!/bin/sh

postfix start
./usr/local/bin/emailCheck.sh &
httpd -DFOREGROUND