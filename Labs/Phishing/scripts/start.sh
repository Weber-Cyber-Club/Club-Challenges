#!/bin/sh

postalias /etc/aliases
postfix start
cd /srv/profos-site/
npm i
npm start /srv/profos-site/
./usr/local/bin/emailCheck.sh
