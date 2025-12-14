FROM registry.fedoraproject.org/fedora-minimal:latest

RUN dnf install -y httpd dovecot postfix && dnf clean all

COPY web/ /var/www/html/.
# COPY configs/dovecot/ /etc/dovecot/.
# COPY configs/postfix/ /etc/postfix/.
COPY configs/httpd/profos-systems.conf /etc/httpd/conf.d/profos-systems.conf
# COPY scripts/emailCheck.sh /usr/local/bin/emailCheck.sh
COPY scripts/start.sh /usr/local/bin/start.sh

CMD ["/usr/local/bin/start.sh"]
EXPOSE 80
# EXPOSE 25