#!/bin/sh

dovecot
postfix start
./usr/src/emailCheck/emailCheck.sh &
apache2ctl -D FOREGROUND