FROM debian:buster

RUN apt update
RUN apt install -y vsftpd

COPY conf/vsftpd.conf /var/www/vsftpd.conf
COPY tools/script.sh /var/www/script.sh

CMD bash /var/www/script.sh