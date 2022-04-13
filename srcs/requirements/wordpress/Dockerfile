FROM debian:buster

RUN apt-get update 

RUN apt install -y curl

RUN apt update

RUN apt install -y php7.3-fpm php-mysql

COPY conf/script.sh  /

COPY conf/wp-config.php /

CMD [ "sh", "script.sh" ]