# FROM debian:buster

# RUN apt update && apt upgrade -y && \
#     apt install -y redis-server && \
#     sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g"  /etc/redis/redis.conf && \
#     sed -i "s|# maxmemory <bytes>|maxmemory 20mb|g"  /etc/redis/redis.conf && \
#     echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf

# EXPOSE 6379

# CMD ["redis-server" , "/etc/redis/redis.conf"]

FROM debian:buster

RUN apt update
RUN apt install -y redis

COPY tools/configure.sh /var/www/configure.sh

CMD bash /var/www/configure.sh