FROM debian:buster

RUN apt update
RUN apt install -y nginx

EXPOSE 444

COPY ./tools/default /etc/nginx/sites-enabled/default
COPY ./src /var/www/html

CMD		[ "nginx", "-g", "daemon off;" ]