FROM registry.fedoraproject.org/fedora-minimal:latest

RUN << EOF 

dnf install -y httpd  postfix && dnf clean all
rm  /etc/postfix/main.cf

mkdir /etc/skel/Maildir/

mkdir /etc/skel/Maildir/.INBOX/
mkdir /etc/skel/Maildir/.Drafts/
mkdir /etc/skel/Maildir/.Sent/
mkdir /etc/skel/Maildir/.Trash/
mkdir /etc/skel/Maildir/tmp/
mkdir /etc/skel/Maildir/new/
mkdir /etc/skel/Maildir/cur/

adduser -m -s /bin/bash professor

EOF

COPY web/ /var/www/html/.
COPY configs/postfix/main.cf /etc/postfix/main.cf
COPY configs/httpd/profos-systems.conf /etc/httpd/conf.d/profos-systems.conf
COPY scripts/emailCheck.sh /usr/local/bin/emailCheck.sh
COPY scripts/start.sh /usr/local/bin/start.sh

CMD ["/usr/local/bin/start.sh"]
EXPOSE 80
EXPOSE 25