FROM debian:trixie-slim

RUN apt-get update && apt-get install -y \
    dovecot-core \
    dovecot-imapd \
    dovecot-pop3d \
    postfix \
    apache2

COPY web/ /var/www/html/.

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80