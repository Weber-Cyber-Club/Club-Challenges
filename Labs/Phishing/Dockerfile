FROM registry.fedoraproject.org/fedora-minimal:latest

RUN dnf install -y httpd  postfix && dnf clean all
RUN rm  /etc/postfix/main.cf

RUN mkdir /etc/skel/Maildir/

RUN mkdir /etc/skel/Maildir/.INBOX/
RUN mkdir /etc/skel/Maildir/.Drafts/
RUN mkdir /etc/skel/Maildir/.Sent/
RUN mkdir /etc/skel/Maildir/.Trash/
RUN mkdir /etc/skel/Maildir/tmp/
RUN mkdir /etc/skel/Maildir/new/
RUN mkdir /etc/skel/Maildir/cur/

RUN adduser -m -s /bin/bash professor

COPY web/ /var/www/html/.
COPY configs/postfix/main.cf /etc/postfix/main.cf
COPY configs/httpd/profos-systems.conf /etc/httpd/conf.d/profos-systems.conf
COPY scripts/emailCheck.sh /usr/local/bin/emailCheck.sh
COPY scripts/start.sh /usr/local/bin/start.sh

CMD ["/usr/local/bin/start.sh"]
EXPOSE 80
EXPOSE 25
