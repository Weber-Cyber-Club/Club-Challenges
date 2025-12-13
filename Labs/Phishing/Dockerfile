FROM debian:trixie-slim

RUN <<EOF

apt-get update && apt-get install -y \
    dovecot-core \
    dovecot-imapd \
    dovecot-pop3d \
    postfix \
    apache2

rm -rf /etc/dovecot/*
rm -rf /etc/postfix/*
mkdir -p /etc/skel/Maildir/{cur/,.Drafts/,.Sent/,tmp/,.Trash/}
adduser --home /home/professor/ --shell /bin/bash professor
mkdir -p /usr/src/emailCheck/

EOF

COPY web/ /var/www/html/.
COPY configs/dovecot /etc/dovecot/.
COPY configs/postfix /etc/postfix/.
COPY scripts/emailCheck.sh /usr/src/emailCheck/
RUN ./usr/src/emailCheck/emailCheck.sh &
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
EXPOSE 25
