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
mkdir /etc/skel/Maildir/
chmod 766 /etc/skel/Maildir/
mkdir /etc/skel/Maildir/cur/
mkdir /etc/skel/Maildir/Drafts/
mkdir /etc/skel/Maildir/.Sent/
mkdir /etc/skel/Maildir/tmp/
mkdir /etc/skel/Maildir/.Trash/
mkdir /etc/skel/Maildir/new/
useradd -m --shell /bin/bash professor
rm /etc/apache2/apache2.conf

EOF

COPY web/ /var/www/html/.
COPY configs/dovecot/ /etc/dovecot/.
COPY configs/postfix/ /etc/postfix/.
COPY configs/apache2/apache2.conf /etc/apache2/apache2.conf
COPY scripts/emailCheck.sh /usr/local/bin/emailCheck.sh
COPY scripts/start.sh /usr/local/bin/start.sh

CMD ["/usr/local/bin/start.sh"]
EXPOSE 80
EXPOSE 25
