#!/bin/sh

postalias /etc/aliases
postfix start
./usr/local/bin/emailCheck.sh &
cd /srv/profos-site/
npm i
npm start /srv/profos-site/
