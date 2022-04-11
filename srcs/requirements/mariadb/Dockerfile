FROM debian:buster

RUN apt update && apt upgrade -y

RUN apt install mariadb-server -y

RUN chown -R mysql:mysql /var/lib/mysql

COPY ./conf/script.sh /
RUN chmod +x script.sh

CMD ["sh", "script.sh"]